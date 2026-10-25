from pathlib import Path
import subprocess,os,zipfile,json,hashlib
r=Path('work/launcher-icons-fix');tree=Path('work/freeform-fix/launcher-res');jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');bt=Path('${ANDROID_TOOLS_ROOT}/sdk/build-tools/36.0.0');env=dict(os.environ,JAVA_HOME=str(jdk));env['PATH']=str(jdk/'bin')+':'+env['PATH']
def run(*a):subprocess.run([str(x) for x in a],env=env,check=True)
run(jdk/'bin/java','-jar','${APKTOOL_JAR}','b',tree,'-o',r/'rebuilt.apk')
run('python3',r/'patch-resources.py')
with zipfile.ZipFile(r/'Launcher.v3.backup.apk') as old,zipfile.ZipFile(r/'rebuilt.apk') as code,zipfile.ZipFile(r/'unsigned.apk','w') as out:
 for i in old.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.DSA','.EC','.MF')):continue
  out.writestr(i,(r/'patched.arsc').read_bytes() if i.filename=='resources.arsc' else code.read(i.filename) if i.filename=='classes.dex' else old.read(i.filename))
run(bt/'zipalign','-f','4',r/'unsigned.apk',r/'aligned.apk')
run(bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',r/'Launcher.icons.apk',r/'aligned.apk')
run(bt/'apksigner','verify','--verbose',r/'Launcher.icons.apk')
with zipfile.ZipFile(r/'Launcher.v3.backup.apk') as old,zipfile.ZipFile(r/'Launcher.icons.apk') as new:
 changed=[n for n in old.namelist() if not n.startswith('META-INF/') and old.read(n)!=new.read(n)]
 assert set(changed)=={'classes.dex','resources.arsc'},changed
(r/'verification.json').write_text(json.dumps({'sha256':hashlib.sha256((r/'Launcher.icons.apk').read_bytes()).hexdigest(),'changed':changed},indent=2))
