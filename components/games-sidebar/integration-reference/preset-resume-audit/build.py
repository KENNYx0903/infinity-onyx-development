from pathlib import Path
import subprocess,zipfile,shutil,hashlib,json
r=Path('work/preset-resume-audit');tree=Path('work/gamespace-redesign/decoded/smali_classes2');d=r/'dex-build';d.mkdir(exist_ok=True)
with zipfile.ZipFile(r/'GameSpace.before.apk') as z:
 for n in ['AndroidManifest.xml','resources.arsc']:(d/n).write_bytes(z.read(n))
(d/'apktool.yml').write_text('version: 3.0.3\napkFileName: GameSpace.apk\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n- arsc\n')
if not (d/'smali').exists():(d/'smali').symlink_to(tree.resolve(),target_is_directory=True)
subprocess.run(['${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1/bin/java','-jar','${APKTOOL_JAR}','b',str(d),'-o',str(r/'dex-built.apk')],check=True)
with zipfile.ZipFile(r/'dex-built.apk') as z:dex=z.read('classes.dex')
with zipfile.ZipFile(r/'GameSpace.before.apk') as a,zipfile.ZipFile(r/'unsigned.apk','w') as b:
 for i in a.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.DSA','.EC','.MF')):continue
  b.writestr(i,dex if i.filename=='classes2.dex' else a.read(i.filename))
bt=Path('${ANDROID_TOOLS_ROOT}/sdk/build-tools/36.0.0')
subprocess.run([str(bt/'zipalign'),'-f','4',str(r/'unsigned.apk'),str(r/'aligned.apk')],check=True)
subprocess.run([str(bt/'apksigner'),'sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',str(r/'GameSpace.repro.apk'),str(r/'aligned.apk')],check=True)
subprocess.run([str(bt/'apksigner'),'verify',str(r/'GameSpace.repro.apk')],check=True)
with zipfile.ZipFile(r/'GameSpace.before.apk') as a,zipfile.ZipFile(r/'GameSpace.repro.apk') as b:
 changed=[n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)];assert changed==['classes2.dex'],changed
with zipfile.ZipFile(r/'GameSpace.profile-fix.apk') as a,zipfile.ZipFile(r/'GameSpace.repro.apk') as b:assert a.read('classes2.dex')==b.read('classes2.dex')
print('Verified: same tested dex; only classes2.dex changed')
