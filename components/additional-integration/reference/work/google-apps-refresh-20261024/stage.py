from pathlib import Path
import json,hashlib,shutil,zipfile,xml.etree.ElementTree as E
D=Path(__file__).resolve().parent;N=Path('work/rom-build-next');rows=json.loads((D/'verified.json').read_text());capture=json.loads((D/'capture.json').read_text());assert len(rows)==len(capture)==12
plan={'format':1,'snapshot_date':'2026-10-24','source':'Updated system Google apps installed on the maintainer phone; APK payload only, no user data','packages':[],'extra_files':[],'mandatory_build_helper':'google_apps_integration.py:apply','clean_boot_validation_pending':True}
fixes=json.loads((N/'required-fixes.json').read_text());fixes['required_fixes']=[f for f in fixes['required_fixes'] if not f.get('id','').startswith('google-updated-')]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def register(pkg,rel,source,metadata):
 p=N/'files/product'/rel;p.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(source,p)
 digest=sha(p);entry={'path':rel,'sha256':digest,'bytes':p.stat().st_size};metadata['payload'].append(entry)
 fixes['required_fixes'].append({'id':'google-updated-'+pkg+'-'+str(rel).replace('/','_'),'partition':'product','image_path':rel,'source':str(p.relative_to(N)),'sha256':digest,'package':pkg,'google_original_signature':True,'google_update_snapshot':'2026-10-24'})
 return entry
for it in rows:
 pkg=it['package'];target=it['original']['path'];assert target.startswith('/product/');rel=target[len('/product/'):];metadata={'package':pkg,'image_dir':rel,'version':it['current']['version'],'version_code':it['current']['version_code'],'original_version':it['original']['version'],'certificate_sha256':it['certificate_sha256'],'verified_rotation_lineage':it.get('verified_original_signer_lineage'),'extract_native_libs':it['extract_native_libs'],'replace_directory_contents':True,'payload':[]};folder=D/'captured'/pkg
 # The staging directory contains only this snapshot, no sidecars or earlier APKs.
 dest=N/'files/product'/rel
 if dest.exists():
  assert dest.is_dir();assert all(x.suffix=='.apk' or x.is_dir() or x.suffix=='.so' for x in dest.rglob('*')),dest
  shutil.rmtree(dest)
 for f in it['files']:
  p=folder/f['name'];assert sha(p)==f['sha256'];name=it['original']['apk_name'] if f['name']=='base.apk' else f['name'];register(pkg,rel+'/'+name,p,metadata)
 if it['extract_native_libs']:
  libs={}
  for l in it['native_libraries']:
   if not l['path'].startswith('lib/arm64-v8a/'):continue
   name=l['path'].split('/')[-1]
   if name in libs:assert libs[name]['sha256']==l['sha256'],(pkg,'conflicting native library',name)
   libs[name]=l
  for name,l in libs.items():
   p=D/'native'/pkg/name;p.parent.mkdir(parents=True,exist_ok=True)
   with zipfile.ZipFile(folder/l['apk']) as z:p.write_bytes(z.read(l['path']))
   assert sha(p)==l['sha256'];register(pkg,rel+'/lib/arm64/'+name,p,metadata)
 plan['packages'].append(metadata);print(pkg,it['current']['version'],len(metadata['payload']),'files',flush=True)
perm=D/'privapp-permissions-lunatik-google-updates.xml';E.parse(perm);extra={'payload':[]};entry=register('permission-policy','etc/permissions/'+perm.name,perm,extra);plan['extra_files'].append(entry)
(N/'google-app-updates.json').write_text(json.dumps(plan,ensure_ascii=False,indent=2)+'\n');(N/'required-fixes.json').write_text(json.dumps(fixes,ensure_ascii=False,indent=2)+'\n');(D/'staged.json').write_text(json.dumps(plan,ensure_ascii=False,indent=2)+'\n');print('Staged',sum(len(x['payload']) for x in plan['packages']),'Google app files plus permissions')
