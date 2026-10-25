#!/usr/bin/env python3
"""Apply one exported bytecode delta to a caller-owned, decoded baseline tree."""
import argparse,hashlib,json,subprocess,shutil
from pathlib import Path
R=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('component',choices=['SystemUI','Launcher','Settings','services','GameSpace'])
p.add_argument('--baseline-apk',type=Path,required=True,help='Matching original APK/JAR; SHA-256 is checked')
p.add_argument('--tree',type=Path,required=True,help='Decoded original smali tree, already prepared by you')
p.add_argument('--apply',action='store_true',help='Write local tree; default is dry run')
a=p.parse_args();bundle=R/'patches/r8'/a.component
meta=json.loads((bundle/'baseline.json').read_text())
h=hashlib.sha256(a.baseline_apk.read_bytes()).hexdigest()
if h!=meta['base_sha256']:p.error('Baseline hash mismatch; refusing to patch an unknown version')
if not a.tree.is_dir():p.error('--tree must already exist')
if a.tree.resolve()==R or R in a.tree.resolve().parents:p.error('Use a local input tree outside this repository')
patch=bundle/'integration.patch';command=['patch','--batch','--fuzz=0','--forward','-p1','-i',str(patch)]
subprocess.run(command+['--dry-run'],cwd=a.tree,check=True)
added=bundle/'added-smali'
if added.exists():
 for src in added.rglob('*.smali'):
  dest=a.tree/src.relative_to(added)
  if dest.exists():p.error('Helper destination already exists: '+str(dest))
if a.apply:
 subprocess.run(command,cwd=a.tree,check=True)
 if added.exists():
  for src in added.rglob('*.smali'):
   dest=a.tree/src.relative_to(added);dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(src,dest)
 print('Local tree patched. Resources, DEX placement, signing, SELinux and device tests remain your responsibility.')
else:print('Dry run passed; nothing written. Use --apply only on a disposable copy of the matching decoded tree.')
