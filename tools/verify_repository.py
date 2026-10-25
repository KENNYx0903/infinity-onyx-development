#!/usr/bin/env python3
"""Offline source-only integrity checks. Never executes integration recipes."""
from pathlib import Path
import ast,hashlib,json,re,subprocess,sys
R=Path(__file__).resolve().parents[1];fail=[];checked=0
index=json.loads((R/'source-index.json').read_text());seen=set()
for e in index['files']:
 p=R/e['path']
 if e['path'] in seen:fail.append('Duplicate source index: '+e['path'])
 seen.add(e['path'])
 if not p.is_file():fail.append('Missing: '+e['path']);continue
 if hashlib.sha256(p.read_bytes()).hexdigest()!=e['sha256']:fail.append('Hash mismatch: '+e['path'])
banned={'.apk','.jar','.dex','.ko','.img','.bin','.ogg','.ttf','.mp4','.zip','.pk8','.pem','.key','.jks','.keystore'}
secrets=[re.compile(rb'-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----'),re.compile(rb'gh[pousr]_[A-Za-z0-9]{25,}'),re.compile(rb'github_pat_[A-Za-z0-9_]{30,}')]
for p in R.rglob('*'):
 if '.git' in p.relative_to(R).parts or '__pycache__' in p.relative_to(R).parts or not p.is_file():continue
 rel=str(p.relative_to(R));data=p.read_bytes();checked+=1
 if p.is_symlink():fail.append('Symlink: '+rel)
 if p.suffix.lower() in banned:fail.append('Excluded artifact type: '+rel)
 if p.stat().st_size>5*1024*1024:fail.append('Unexpected large file: '+rel)
 if any(x.search(data) for x in secrets):fail.append('Possible secret: '+rel)
 if re.search(rb'/home/[A-Za-z0-9_-]+/', data):fail.append('Local identity/path in public file: '+rel)
 try:
  if p.suffix=='.py':ast.parse(data,filename=rel)
  elif p.suffix=='.json':json.loads(data)
  elif p.suffix=='.sh':
   result=subprocess.run(['sh','-n',str(p)],capture_output=True,text=True)
   if result.returncode:fail.append('Shell syntax: '+rel+' '+result.stderr.strip())
 except Exception as e:fail.append(rel+': '+str(e))
# Directories intended to hold files must not accidentally be empty placeholders.
for name in ['SystemUI','Launcher','Settings','services','GameSpace']:
 if not (R/'patches/r8'/name/'baseline.json').exists():fail.append('Missing component patch baseline: '+name)
report={'files_checked':checked,'indexed_files':len(seen),'errors':fail}
print(json.dumps(report,indent=2))
sys.exit(bool(fail))
