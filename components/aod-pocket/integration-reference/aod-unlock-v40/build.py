from pathlib import Path
import shutil,subprocess,zipfile,os,json,hashlib
r=Path('work/aod-unlock-v40');src=r/'src';src.mkdir(exist_ok=True);accepted=Path('work/rom-build-next/aod-eu-reference/accepted-visual-v35/src/src')
for n in ['LunatikAodTransition.java','LunatikAodVisual.java','LunatikSleepUi.java']:shutil.copy2(accepted/n,src/n)
t=src/'LunatikAodTransition.java';ts=t.read_text()
ts=ts.replace('private static long keyguardEntry,biometricUntil;','private static long keyguardEntry,biometricUntil,hideClockUntil;')
ts=ts.replace('if(state==1 && clockState!=1){','if(state==1 && clockState==0)hideClockUntil=0;\n  if(state==1 && clockState!=1){')
ts=ts.replace('public static void biometric(int mode){','public static boolean hideUnlockClock(){return SystemClock.uptimeMillis()<hideClockUntil;}\n public static void biometric(int mode){\n  if((mode==1 || mode==2 || mode==7) && isAodUnlock())hideClockUntil=SystemClock.uptimeMillis()+2000;')
t.write_text(ts)
p=src/'LunatikAodVisual.java';s=p.read_text().replace('private static long handoffStart;','private static long handoffStart, panelReadySince;')
s=s.replace('''  if(!ready && SystemClock.uptimeMillis()-handoffStart<300){H.postDelayed(this,40);return;}''','''  long now=SystemClock.uptimeMillis();
  if(!ready)panelReadySince=0;
  else if(panelReadySince==0)panelReadySince=now;
  boolean settled=ready && now-panelReadySince>=80;
  if(!settled && now-handoffStart<1200){H.postDelayed(this,40);return;}''')
s=s.replace('handoffStart=SystemClock.uptimeMillis();','handoffStart=SystemClock.uptimeMillis();panelReadySince=0;')
# Complete the fade before the native controller's first 80ms brightness commit.
s=s.replace('ValueAnimator.ofFloat(1f,0f);reveal.setDuration(120);','ValueAnimator.ofFloat(1f,0f);reveal.setDuration(60);')
s=s.replace('try{String b=node("doze_brightness");ready=node("dynamic_fps").equals("30") && (b.equals("1")||b.equals("2"));}catch(Exception ignored){}', 'try{android.view.Display d=context==null?null:context.getSystemService(android.hardware.display.DisplayManager.class).getDisplay(0);ready=d!=null && d.getState()==4 && Math.abs(d.getMode().getRefreshRate()-30f)<.1f;}catch(Exception ignored){}')
s=s.replace('private static PowerManager.WakeLock drawLock;','private static PowerManager.WakeLock drawLock,entryLock;')
s=s.replace('drawLock.setReferenceCounted(false);','drawLock.setReferenceCounted(false);\n  entryLock=context.getSystemService(PowerManager.class).newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,"LunatikAod:entry-handoff");entryLock.setReferenceCounted(false);')
s=s.replace('handoffStart=SystemClock.uptimeMillis();panelReadySince=0;','handoffStart=SystemClock.uptimeMillis();panelReadySince=0;if(entryLock!=null)entryLock.acquire(1800);')
s=s.replace('registered=false;dx=dy=0;invalidate();','registered=false;dx=dy=0;if(entryLock!=null && entryLock.isHeld())entryLock.release();invalidate();')
s=s.replace('reveal=android.animation.ValueAnimator.ofFloat(handoffAlpha,1f);','LunatikAodTransition.notificationWindow();\n  if(entryLock!=null && entryLock.isHeld())entryLock.release();\n  reveal=android.animation.ValueAnimator.ofFloat(handoffAlpha,1f);')
s=s.replace('int n=c.save();if(!aod)return n;', 'int n=c.save();if(LunatikAodTransition.hideUnlockClock() && (v.getId()==largeClockId || v.getId()==smallClockId)){c.clipRect(0,0,0,0);return n;}if(!aod)return n;')
s=s.replace('boolean notifications=v.getClass().getName().endsWith("NotificationIconContainer");','if(LunatikAodTransition.hideUnlockClock() && (v.getClass().getName().endsWith("ClockStyle") || v.getClass().getName().endsWith("AODStyle"))){c.clipRect(0,0,0,0);return n;}\n  boolean notifications=v.getClass().getName().endsWith("NotificationIconContainer");')
s=s.replace('int n=c.save();if(LunatikAodTransition.hideUnlockClock() && (v.getId()==largeClockId || v.getId()==smallClockId))', 'int n=c.save();String unlockId="";try{unlockId=v.getResources().getResourceEntryName(v.getId());}catch(Exception ignored){}if(LunatikAodTransition.hideUnlockClock() && (v.getId()==largeClockId || v.getId()==smallClockId || unlockId.equals("keyguard_slice_view") || unlockId.equals("keyguard_smartspace_view") || unlockId.equals("date_smartspace_view") || unlockId.equals("bc_smartspace_view")))')
assert 'now-handoffStart<1200' in s;p.write_text(s)
jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');bt=sdk/'build-tools/36.0.0';android=sdk/'platforms/android-36/android.jar';env=dict(os.environ,JAVA_HOME=str(jdk));env['PATH']=str(jdk/'bin')+':'+env['PATH']
def run(*a):subprocess.run(list(map(str,a)),env=env,check=True)
for n in ['classes','dex','helper']:(r/n).mkdir(exist_ok=True)
run(jdk/'bin/javac','--release','8','-cp',android,'-d',r/'classes',*src.glob('*.java'))
run(bt/'d8','--min-api','35','--lib',android,'--output',r/'dex',*sorted((r/'classes/com/android/systemui/doze').glob('*.class')))
cp=':'.join(map(str,(sdk/'cmdline-tools/latest/lib').rglob('*.jar')))
run(jdk/'bin/java','-cp',cp,'com.android.tools.smali.baksmali.Main','d',r/'dex/classes.dex','-o',r/'helper')
target=r/'smali/com/android/systemui/doze'
for f in target.glob('LunatikAodVisual*.smali'):f.unlink()
shutil.copy2(r/'helper/com/android/systemui/doze/LunatikAodTransition.smali',target/'LunatikAodTransition.smali')
for f in (r/'helper/com/android/systemui/doze').glob('LunatikAodVisual*.smali'):shutil.copy2(f,target/f.name)
d=r/'dex-build';d.mkdir(exist_ok=True)
with zipfile.ZipFile(r/'SystemUI.before.apk') as z:
 for n in ['AndroidManifest.xml','resources.arsc']:(d/n).write_bytes(z.read(n))
(d/'apktool.yml').write_text('version: 3.0.3\napkFileName: SystemUI.apk\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n- arsc\n')
if not (d/'smali').exists():(d/'smali').symlink_to((r/'smali').resolve(),target_is_directory=True)
run(jdk/'bin/java','-jar','${APKTOOL_JAR}','b',d,'-o',r/'dex-built.apk')
with zipfile.ZipFile(r/'dex-built.apk') as z:dex=z.read('classes.dex')
with zipfile.ZipFile(r/'SystemUI.before.apk') as a,zipfile.ZipFile(r/'unsigned.apk','w') as b:
 for i in a.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.DSA','.EC','.MF')):continue
  b.writestr(i,dex if i.filename=='classes.dex' else a.read(i.filename))
run(bt/'zipalign','-f','4',r/'unsigned.apk',r/'aligned.apk')
run(bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',r/'SystemUI.unlock-v40.apk',r/'aligned.apk');run(bt/'apksigner','verify',r/'SystemUI.unlock-v40.apk')
with zipfile.ZipFile(r/'SystemUI.before.apk') as a,zipfile.ZipFile(r/'SystemUI.unlock-v40.apk') as b:
 changed=[n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)];assert changed==['classes.dex'],changed
(r/'verification.json').write_text(json.dumps({'changed':changed,'sha256':hashlib.sha256((r/'SystemUI.unlock-v40.apk').read_bytes()).hexdigest(),'services_unchanged':'v37','visual_test':'pending'},indent=2))
