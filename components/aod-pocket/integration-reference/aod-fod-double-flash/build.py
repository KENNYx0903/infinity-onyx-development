from pathlib import Path
import subprocess,os,zipfile,json,hashlib
p=Path('work/aod-fod-double-flash');base=Path('work/rom-build-next/files/system_ext/priv-app/SystemUI/SystemUI.apk');sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');j=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');bt=sdk/'build-tools/36.0.0';env=dict(os.environ,JAVA_HOME=str(j));env['PATH']=str(j/'bin')+':'+env['PATH']
def run(*args):subprocess.run(list(map(str,args)),check=True,env=env)
if not (p/'baseline.apk').exists(): (p/'baseline.apk').write_bytes(base.read_bytes())
base=p/'baseline.apk';d=p/'dex-build';d.mkdir(exist_ok=True)
with zipfile.ZipFile(base) as z:
 for n in ['AndroidManifest.xml','resources.arsc']:(d/n).write_bytes(z.read(n))
(d/'apktool.yml').write_text('version: 3.0.3\napkFileName: SystemUI.apk\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n- arsc\n')
if not (d/'smali').exists():(d/'smali').symlink_to((p/'smali').resolve(),target_is_directory=True)
run(j/'bin/java','-Xmx2g','-jar','${APKTOOL_JAR}','b',d,'-o',p/'dex-built.apk')
with zipfile.ZipFile(p/'dex-built.apk') as z:dex=z.read('classes.dex')
with zipfile.ZipFile(base) as a,zipfile.ZipFile(p/'unsigned.apk','w') as b:
 for i in a.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.DSA','.EC','.MF')):continue
  b.writestr(i,dex if i.filename=='classes.dex' else a.read(i.filename))
run(bt/'zipalign','-f','4',p/'unsigned.apk',p/'aligned.apk');out=p/'SystemUI.fod-real-touch.apk'
run(bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',out,p/'aligned.apk');run(bt/'apksigner','verify',out)
with zipfile.ZipFile(base) as a,zipfile.ZipFile(out) as b:
 changed=[n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)];assert changed==['classes.dex'],changed
(p/'verification.json').write_text(json.dumps({'sha256':hashlib.sha256(out.read_bytes()).hexdigest(),'changed_entries':changed,'runtime_tested':False},indent=2))
