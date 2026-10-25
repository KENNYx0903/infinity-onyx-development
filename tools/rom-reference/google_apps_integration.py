"""Mandatory Google update integration for the next image builder.
Call apply(part, items, replacements[part], additions.setdefault(part, {}), excluded)
after the builder's existing exclusion rules and BEFORE creating the filesystem tar.
items is the mutable path -> EROFS metadata dictionary. Payloads are immutable Google APKs.
"""
from pathlib import Path
import hashlib,json,stat
ROOT=Path(__file__).resolve().parent

def apply(part,items,changes,adds,excluded):
 if part!='product':return {'packages':0,'removed':[]}
 plan=json.loads((ROOT/'google-app-updates.json').read_text());removed=[]
 def source(entry):
  p=ROOT/'files/product'/entry['path']
  assert p.is_file() and hashlib.sha256(p.read_bytes()).hexdigest()==entry['sha256'],p
  return p
 def addfile(entry):
  path=entry['path'];src=source(entry)
  for directory in reversed(Path(path).parents):
   d=directory.as_posix()
   if d=='.':continue
   if d in items:assert stat.S_ISDIR(items[d]['mode']),(d,'parent is not directory')
   elif d not in adds:adds[d]=(None,0o755,0,0)
  if path in items and stat.S_ISREG(items[path]['mode']):
   changes[path]=src;adds.pop(path,None)
  else:
   if path in items:items.pop(path);excluded.add(path);removed.append(path)
   changes.pop(path,None);adds[path]=(src,0o644,0,0)
 for pkg in plan['packages']:
  top=pkg['image_dir'];wanted={e['path'] for e in pkg['payload']};parents={top}
  for path in wanted:parents.update(str(x) for x in Path(path).parents if str(x)!='.')
  keep=wanted|parents
  for p in list(items):
   if p.startswith(top+'/') and p not in keep:
    items.pop(p);excluded.add(p);removed.append(p)
  # Discard older builder-specified GMS splits too, even if absent in the base image.
  for mapping in [changes,adds]:
   for p in list(mapping):
    if p.startswith(top+'/') and p not in keep:mapping.pop(p)
  for entry in pkg['payload']:addfile(entry)
 for entry in plan['extra_files']:addfile(entry)
 for pkg in plan['packages']:
  expected={e['path'] for e in pkg['payload']}
  got={p for p in set(items)|set(adds) if p.startswith(pkg['image_dir']+'/') and ((p in adds and adds[p][0] is not None) or (p in items and not stat.S_ISDIR(items[p]['mode'])))}
  assert got==expected,(pkg['package'],got^expected)
 return {'packages':len(plan['packages']),'removed':sorted(set(removed)),'payload_files':sum(len(x['payload']) for x in plan['packages'])+len(plan['extra_files'])}
