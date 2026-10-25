from pathlib import Path
import subprocess,zipfile,shutil,os,json,hashlib
r=Path('work/aod-entry-brightness-v54');base=Path('work/aod-sleep-fix/v48/services.vendor-light-v48.jar')
src=r/'LunatikAodBrightness.java';s=Path('work/aod-sleep-fix/v48/LunatikAodBrightness.java').read_text()
s=s.replace('private long candidateSince;','private long candidateSince,entryBrightnessNotBefore;')
s=s.replace('if(!active || !requested || pending<1 || displayState!=3)return;','if(!active || !requested || pending<1 || displayState!=3)return;\n  long remaining=entryBrightnessNotBefore-SystemClock.uptimeMillis();\n  if(remaining>0){handler.postDelayed(this,remaining);return;}')
s=s.replace('pending=ambientMode;retries=0;requestDraw();','entryBrightnessNotBefore=SystemClock.uptimeMillis()+280;\n   pending=ambientMode;retries=0;requestDraw();')
src.write_text(s)
jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');bt=sdk/'build-tools/36.0.0';android=sdk/'platforms/android-36/android.jar';cp=':'.join(map(str,(sdk/'cmdline-tools/latest/lib').rglob('*.jar')))
def run(*args):subprocess.run(list(map(str,args)),check=True)
for n in ['classes','helper-dex']:(r/n).mkdir(exist_ok=True)
run(jdk/'bin/javac','--release','8','-cp',android,'-d',r/'classes',src)
run(bt/'d8','--min-api','35','--lib',android,'--output',r/'helper-dex',*sorted((r/'classes/com/android/server/display/mode').glob('*.class')))
run(jdk/'bin/java','-cp',cp,'com.android.tools.smali.baksmali.Main','d',r/'helper-dex/classes.dex','-o',r/'helper-smali')
with zipfile.ZipFile(base) as z:(r/'base.dex').write_bytes(z.read('classes.dex'))
run(jdk/'bin/java','-Xmx2g','-cp',cp,'com.android.tools.smali.baksmali.Main','d',r/'base.dex','-o',r/'smali')
for p in (r/'helper-smali/com/android/server/display/mode').glob('LunatikAodBrightness*.smali'):shutil.copy2(p,r/'smali/com/android/server/display/mode'/p.name)
d=r/'dex-build';d.mkdir(exist_ok=True)
(d/'apktool.yml').write_text('version: 3.0.3\napkFileName: services.jar\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n')
if not (d/'smali').exists():(d/'smali').symlink_to((r/'smali').resolve(),target_is_directory=True)
run(jdk/'bin/java','-Xmx2g','-jar','${APKTOOL_JAR}','b',d,'-o',r/'dex-built.jar')
with zipfile.ZipFile(r/'dex-built.jar') as z:(r/'classes.dex').write_bytes(z.read('classes.dex'))
with zipfile.ZipFile(base) as z,zipfile.ZipFile(r/'services.entry-v54.jar','w') as out:
 for i in z.infolist():out.writestr(i,(r/'classes.dex').read_bytes() if i.filename=='classes.dex' else z.read(i.filename))
with zipfile.ZipFile(base) as a,zipfile.ZipFile(r/'services.entry-v54.jar') as b:
 changed=[n for n in a.namelist() if a.read(n)!=b.read(n)];assert changed==['classes.dex']
(r/'verification.json').write_text(json.dumps({'base':str(base),'changed':changed,'sha256':hashlib.sha256((r/'services.entry-v54.jar').read_bytes()).hexdigest(),'only_behavior':'defer initial native brightness until 280ms after activation; existing400msDRAW and sensor/prox policy unchanged'},indent=2))
