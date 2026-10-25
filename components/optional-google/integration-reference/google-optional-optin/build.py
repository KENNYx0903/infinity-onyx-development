from pathlib import Path
import subprocess,zipfile,json,hashlib
D=Path('work/google-optional-optin');base=Path('work/aod-sleep-fix/v48/services.vendor-light-v48.jar');jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');build=D/'dex-build';build.mkdir(exist_ok=True);(build/'apktool.yml').write_text('version: 3.0.3\napkFileName: services.jar\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n')
if not (build/'smali').exists():(build/'smali').symlink_to((D/'smali').resolve(),target_is_directory=True)
subprocess.run([str(jdk/'bin/java'),'-Xmx2g','-jar','${APKTOOL_JAR}','b',str(build),'-o',str(D/'rebuilt.jar')],check=True)
with zipfile.ZipFile(D/'rebuilt.jar') as z:dex=z.read('classes.dex')
with zipfile.ZipFile(base) as z,zipfile.ZipFile(D/'services.google-optin.jar','w') as out:
 for i in z.infolist():out.writestr(i,dex if i.filename=='classes.dex' else z.read(i.filename))
with zipfile.ZipFile(base) as a,zipfile.ZipFile(D/'services.google-optin.jar') as b:assert [n for n in a.namelist() if a.read(n)!=b.read(n)]==['classes.dex']
(D/'build-verification.json').write_text(json.dumps({'base':str(base),'base_sha256':hashlib.sha256(base.read_bytes()).hexdigest(),'sha256':hashlib.sha256((D/'services.google-optin.jar').read_bytes()).hexdigest(),'changed_jar_entries':['classes.dex'],'runtime_verified':False},indent=2))
