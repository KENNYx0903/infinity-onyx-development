from pathlib import Path
import sys,stat,tarfile,hashlib,subprocess,copy,io,uuid,json,concurrent.futures,threading
sys.path.insert(0,'work/rom-build-r8');from erofs_meta import Erofs
r=Path('work/rom-build-r8');a=Path('work/rom-audit');m=Path('work/final-release-v3.1');(r/'images').mkdir(exist_ok=True);(r/'files').mkdir(exist_ok=True)
# Small source-level configuration changes are based strictly on this ROM.
cam=a/'odm/etc/camera/camxoverridesettings.txt';s=cam.read_text();import re
for k,v in [('SATWrapperType','2'),('satSensorPolicyMask','17')]:
 s,n=re.subn(r'(?m)^\s*#*\s*'+k+r'\s*=.*$',k+'='+v,s);assert n==1,(k,n)
(r/'files/camxoverridesettings.txt').write_text(s)
health=(a/'vendor/bin/hw/android.hardware.health-service.qti').read_bytes()
old=b'%s/%s/time_to_full_now\0';new=b'%s/%s/time_to_full_off\0';assert len(old)==len(new) and health.count(old)==1
(r/'files/android.hardware.health-service.qti').write_bytes(health.replace(old,new))
cil=(a/'system_ext/etc/selinux/system_ext_sepolicy.cil').read_bytes()+b'\n'+(r/'panel-guard.cil').read_bytes()
(r/'files/system_ext_sepolicy.cil').write_bytes(cil)
# init hash combines system_ext policy and the vendor-version compatibility mapping.
mapfile=a/'system_ext/etc/selinux/mapping/202504.cil'
(r/'files/system_ext_sepolicy_and_mapping.sha256').write_text(hashlib.sha256(cil+mapfile.read_bytes()).hexdigest()+'\n')
replacements={
'system':{'system/bin/cameraserver':m/'runtime/cameraserver.raw-compat','system/framework/services.jar':r/'services.jar','system/etc/init/hw/init.rc':r/'init.rc'},
'system_ext':{'priv-app/SystemUI/SystemUI.apk':r/'SystemUI.apk','priv-app/Launcher3QuickStep/Launcher3QuickStep.apk':r/'Launcher3QuickStep.apk','priv-app/Settings/Settings.apk':Path('work/settings-aod-wallpaper/Settings.no-aod-wallpaper.apk'),'etc/selinux/system_ext_sepolicy.cil':r/'files/system_ext_sepolicy.cil','etc/selinux/system_ext_sepolicy_and_mapping.sha256':r/'files/system_ext_sepolicy_and_mapping.sha256'},
'vendor':{'etc/displayconfig/display_id_4630947173316895379.xml':m/'runtime/display_calibration_accurate.xml','lib64/vendor.qti.hardware.vibrator.impl.so':m/'haptics/vibrator-preview-strength-v3.so','bin/hw/android.hardware.health-service.qti':r/'files/android.hardware.health-service.qti'},
'odm':{'etc/selinux/precompiled_sepolicy':r/'sepolicy.compiled','etc/selinux/precompiled_sepolicy.system_ext_sepolicy_and_mapping.sha256':r/'files/system_ext_sepolicy_and_mapping.sha256','etc/camera/camxoverridesettings.txt':r/'files/camxoverridesettings.txt','etc/camera/xiaomi/overridesettings.json':m/'runtime/overridesettings.sdr.json'}}
additions={'system_ext':{'bin/lunatik-panel-guard.sh':(r/'lunatik-panel-guard.sh',0o755,0,2000),'etc/init/lunatik-fixes.rc':(r/'lunatik-fixes.rc',0o644,0,0),'etc/default-permissions/lunatik-systemui.xml':(r/'lunatik-systemui-permissions.xml',0o644,0,0)}}
replacements['vendor_dlkm']={}
replacements['product']={'priv-app/GmsCore/GmsCore.apk':r/'gms/GmsCore.apk'}
additions['product']={'etc/permissions/privapp-permissions-lunatik-google.xml':(r/'files/privapp-permissions-lunatik-google.xml',0o644,0,0)}
for f in (r/'gms').glob('split_*.apk'):
 additions['product']['priv-app/GmsCore/'+f.name]=(f,0o644,0,0)
additions['system_ext'].update({
 'etc/lunatik':(None,0o755,0,0),
 'etc/lunatik/susfs':(None,0o755,0,0),
 'etc/lunatik/susfs/susfs_guard_lkm.ko':(r/'susfs/susfs_guard_lkm.ko',0o644,0,0),
 'etc/lunatik/susfs/loader':(r/'susfs/loader',0o755,0,0),
 'bin/lunatik-susfs-prepare.sh':(r/'lunatik-susfs-prepare.sh',0o755,0,0),
 'etc/lunatik/susfs/early.sh':(r/'early.sh',0o644,0,0),
 'bin/lunatik-susfs-start.sh':(r/'lunatik-susfs-start.sh',0o755,0,0),
 'etc/init/lunatik-susfs.rc':(r/'lunatik-susfs.rc',0o644,0,0),
})

# Accepted post-R4 changes, immutable staged inputs checked by runner.
replacements['system']['system/etc/font_fallback.xml']=Path('work/rom-build-next/files/system/system/etc/font_fallback.xml')
replacements['system_ext']['priv-app/GameSpace/GameSpace.apk']=Path('work/rom-build-next/files/system_ext/priv-app/GameSpace/GameSpace.apk')
replacements['vendor']['etc/audio/audio_module_config_primary.xml']=Path('work/rom-audit/vendor/etc/audio/audio_module_config_primary.xml')
replacements['vendor']['etc/audio_policy_volumes.xml']=Path('work/whatsapp-volume-audit/audio_policy_volumes.audible-min.xml')
additions['product']['app/GoogleWeather']=(None,0o755,0,0)
for f in Path('work/rom-build-next/files/product/app/GoogleWeather').glob('*.apk'):
 additions['product']['app/GoogleWeather/'+f.name]=(f,0o644,0,0)

replacements['vendor']['lib64/libar-pal.so']=Path('work/whatsapp-volume-v2/libar-pal.voip-master-gain.so')
additions['system_ext'].update({
 'etc/lunatik/aod':(None,0o755,0,0),
 'etc/lunatik/aod/lunatik_aod_retention.ko':(Path('work/aod-fix/retention-paired/lunatik_aod_retention.ko'),0o644,0,0),
 'bin/lunatik-aod-start.sh':(r/'lunatik-aod-start.sh',0o755,0,0),
 'etc/init/lunatik-aod.rc':(r/'lunatik-aod.rc',0o644,0,0),
})

report=json.loads((r/'images-report.json').read_text()) if (r/'images-report.json').exists() else {}
report_lock=threading.Lock()
class NullTar:
 def __enter__(self):return self
 def __exit__(self,*args):pass
 def addfile(self,*args):pass

def build(part):
 image=a/(part+'.img');e=Erofs(image);items=dict(e.walk());changes=replacements[part];adds=additions.get(part,{})
 excluded={p for p in items if part=='system_ext' and any(p==x+'/oat' or p.startswith(x+'/oat/') for x in ['priv-app/SystemUI','priv-app/Settings','priv-app/Launcher3QuickStep','priv-app/GameSpace'])}
 if part=='system':excluded.update(p for p in items if p.startswith('system/framework/oat/') and Path(p).name in ['services.odex','services.vdex','services.art'])
 # Apply every staged component, then normalize Google splits/native libraries.
 for entry in json.loads((r/'manifest.json').read_text())['required_fixes']:
  if entry['partition']!=part:continue
  path=entry['image_path'];source=r/entry['source']
  if path in items:
   assert stat.S_ISREG(items[path]['mode']),path
   changes[path]=source;adds.pop(path,None)
  else:
   changes.pop(path,None)
   for directory in reversed(Path(path).parents):
    d=directory.as_posix()
    if d!='.' and d not in items and d not in adds:adds[d]=(None,0o755,0,0)
   adds[path]=(source,0o755 if '/bin/' in '/'+path else 0o644,0,2000 if '/bin/' in '/'+path else 0)
 from google_apps_integration import apply as apply_google_updates
 apply_google_updates(part,items,changes,adds,excluded)
 for path,source in changes.items():
  assert path in items and path not in excluded,(part,path,'invalid replacement')
  assert source.is_file(),(part,path,source,'missing replacement')
 for path,(source,mode,uid,gid) in adds.items():
  assert path not in items,(part,path,'duplicate addition')
  if source is not None:assert source.is_file(),(part,path,source,'missing addition')
 if '--preflight' in sys.argv:
  print('PREFLIGHT',part,len(changes),'replacements',len(adds),'additions',flush=True);return
 resume=part in ['system','vendor','odm'] and (r/'images'/(part+'.img')).exists()
 tarpath=r/(part+'.tar');expected={};seen={}
 def add(t,p,i,datafile=None):
  ti=tarfile.TarInfo(p or '.');ti.mode=stat.S_IMODE(i['mode']);ti.uid=i['uid'];ti.gid=i['gid'];ti.mtime=i['mtime'];ti.uname='';ti.gname=''
  ti.pax_headers={'SCHILY.xattr.'+k:v.decode('utf8','surrogateescape') for k,v in i['xattrs'].items()}
  source=datafile or a/part/p
  if stat.S_ISDIR(i['mode']):ti.type=tarfile.DIRTYPE;t.addfile(ti)
  elif stat.S_ISLNK(i['mode']):ti.type=tarfile.SYMTYPE;ti.linkname=source.readlink().as_posix();t.addfile(ti)
  elif stat.S_ISREG(i['mode']):
   if datafile is None and i['nid'] in seen:
    ti.type=tarfile.LNKTYPE;ti.linkname=seen[i['nid']];t.addfile(ti)
   else:
    ti.size=source.stat().st_size
    with source.open('rb') as f:t.addfile(ti,f)
    seen[i['nid']]=p
  else:raise ValueError(('unsupported inode',p,i))
  expected[p]={k:i[k] for k in ['mode','uid','gid','xattrs']}
 with (NullTar() if resume else tarfile.open(tarpath,'w',format=tarfile.PAX_FORMAT,encoding='utf8',errors='surrogateescape')) as t:
  for p,i in items.items():
   if p not in excluded:add(t,p,i,changes.get(p))
  for p,(f,mode,uid,gid) in adds.items():
   assert p not in items
   i=dict(mode=(stat.S_IFDIR if f is None else stat.S_IFREG)|mode,uid=uid,gid=gid,mtime=1230768000,xattrs={'security.selinux':b'u:object_r:system_file:s0'},nid=-len(expected));add(t,p,i,f)
 out=r/'images'/(part+'.img');u=str(uuid.UUID(bytes=e.d[1024+48:1024+64]))
 if not resume:
  with (r/(part+'-mkfs.log')).open('w') as log:
   subprocess.run(['work/rom-build-r8/tools/erofs-1810/usr/bin/mkfs.erofs','--quiet','-z','lz4hc,12','-C65536','-T1230768000','-U',u,'--tar=f',str(out),str(tarpath)],stdout=log,stderr=subprocess.STDOUT,check=True)
 rebuilt=dict(Erofs(out).walk());assert set(expected)==set(rebuilt),(part,'path set')
 for p,i in expected.items():
  for k,v in i.items():assert rebuilt[p][k]==v,(part,p,k,v,rebuilt[p][k])
 subprocess.run(['work/rom-build-r8/tools/erofs-1810/usr/bin/fsck.erofs',str(out)],check=True,stdout=subprocess.DEVNULL)
 report[part]={'paths':len(expected),'removed':sorted(excluded),'replaced':{p:hashlib.sha256(f.read_bytes()).hexdigest() for p,f in changes.items()},'added':list(adds),'added_hashes':{p:hashlib.sha256(f.read_bytes()).hexdigest() for p,(f,_,_,_) in adds.items() if f is not None},'erofs_bytes':out.stat().st_size,'all_original_metadata_preserved':True}
 tarpath.unlink(missing_ok=True)
 with report_lock:
  temp=r/'images-report.tmp';temp.write_text(json.dumps(report,indent=2));temp.replace(r/'images-report.json')
 print('VERIFIED EROFS',part,len(expected),'paths',out.stat().st_size,'bytes',flush=True)
with concurrent.futures.ThreadPoolExecutor(max_workers=2) as pool:list(pool.map(build,[x for x in sys.argv[1:] if not x.startswith('--')] or replacements))
if '--preflight' not in sys.argv:(r/'images-report.json').write_text(json.dumps(report,indent=2))
