from pathlib import Path
import shutil,subprocess,os,zipfile,hashlib,json
p=Path('work/eu-lock-haptic/integration');tree=p/'smali_classes2'
for f in (p/'helper-smali/com/android/systemui/keyguard').glob('OnyxLockHaptic*.smali'):shutil.copy2(f,tree/'com/android/systemui/keyguard'/f.name)
sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');j=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');bt=sdk/'build-tools/36.0.0';cp=':'.join(map(str,(sdk/'cmdline-tools/latest/lib').rglob('*.jar')))
d=p/'dex-build';d.mkdir(exist_ok=True)
with zipfile.ZipFile(p/'baseline.apk') as z:
 for n in ['AndroidManifest.xml','resources.arsc']:(d/n).write_bytes(z.read(n))
(d/'apktool.yml').write_text('version: 3.0.3\napkFileName: SystemUI.apk\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n- arsc\n')
if not (d/'smali').exists():(d/'smali').symlink_to(tree.resolve(),target_is_directory=True)
env=dict(os.environ,JAVA_HOME=str(j));env['PATH']=str(j/'bin')+':'+env['PATH']
subprocess.run([str(j/'bin/java'),'-Xmx2g','-jar','${APKTOOL_JAR}','b',str(d),'-o',str(p/'dex-built.apk')],env=env,check=True)
with zipfile.ZipFile(p/'dex-built.apk') as z:(p/'patched-classes2.dex').write_bytes(z.read('classes.dex'))
with zipfile.ZipFile(p/'baseline.apk') as a,zipfile.ZipFile(p/'unsigned.apk','w') as b:
 for i in a.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.DSA','.EC','.MF')):continue
  b.writestr(i,(p/'patched-classes2.dex').read_bytes() if i.filename=='classes2.dex' else a.read(i.filename))
for args in [[bt/'zipalign','-f','4',p/'unsigned.apk',p/'aligned.apk'],[bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',p/'SystemUI.eu-lock-haptic.apk',p/'aligned.apk']]:subprocess.run(list(map(str,args)),check=True)
with zipfile.ZipFile(p/'baseline.apk') as a,zipfile.ZipFile(p/'SystemUI.eu-lock-haptic.apk') as b:
 changed=[n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)];assert changed==['classes2.dex'],changed
print('Built',hashlib.sha256((p/'SystemUI.eu-lock-haptic.apk').read_bytes()).hexdigest())
