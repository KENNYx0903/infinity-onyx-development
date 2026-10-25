from pathlib import Path
import sys,subprocess,hashlib,json,stat,concurrent.futures
sys.path[:0]=['work/rom-build-r8','work/rom-build-r8/tools'];from erofs_meta import Erofs;import avbtool
r=Path('work/rom-build-r8');a=Path('work/rom-audit');report=json.loads((r/'images-report.json').read_text());(r/'verified-files').mkdir(exist_ok=True)
def digest(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  while b:=f.read(1024*1024):h.update(b)
 return h.hexdigest()
def check(part):
 out=r/'verified-files'/part
 import shutil
 if out.exists():shutil.rmtree(out)
 with (r/(part+'-extract-verify.log')).open('w') as log:subprocess.run(['work/rom-build-r8/tools/erofs-1810/usr/bin/fsck.erofs','--extract='+str(out),str(r/'images'/(part+'.img'))],check=True,stdout=log,stderr=log)
 count=0
 for p,i in Erofs(r/'images'/(part+'.img')).walk():
  f=out/p
  if stat.S_ISLNK(i['mode']):assert f.readlink()==(a/part/p).readlink(),(part,p,'symlink')
  if not stat.S_ISREG(i['mode']):continue
  expected=report[part]['replaced'].get(p)
  if p in report[part]['added']:
   expected=report[part]['added_hashes'][p]
  if expected is None:expected=digest(a/part/p)
  assert digest(f)==expected,(part,p,'content mismatch');count+=1
 print('PASS content hashes:',part,count,'regular files',flush=True)
 report[part]['all_file_contents_verified']=True;report[part]['verified_regular_files']=count
with concurrent.futures.ThreadPoolExecutor(max_workers=2) as pool:list(pool.map(check,sys.argv[1:] or report))
(r/'images-report.json').write_text(json.dumps(report,indent=2))
# Validate complete AVB graph with unchanged original dependencies in a separate directory.
v=r/'avb-verify';v.mkdir(exist_ok=True)
for n in ['vbmeta','vbmeta_system','system','system_ext','vendor','odm','boot','recovery','dtbo','init_boot','vendor_boot','product','system_dlkm','vendor_dlkm']:
 source=r/'images'/(n+'.img')
 if not source.exists():source=a/(n+'.img')
 p=v/(n+'.img')
 if not p.exists():p.symlink_to(source.resolve())
with (r/'avb-verify.log').open('w') as log:subprocess.run(['python3',str(r/'tools/avbtool.py'),'verify_image','--image',str(v/'vbmeta.img'),'--key',str(r/'tools/avb-testkey.pem'),'--follow_chain_partitions'],stdout=log,stderr=log,check=True)
print('PASS full AVB signatures, chained images, hashes and verity trees',flush=True)
