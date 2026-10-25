import sys,shutil,zipfile,json,hashlib
from pathlib import Path
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/aod-pocket-fingerprint').resolve();base=D/'baseline.apk'
if not base.exists():shutil.copy2('work/rom-build-next/files/system_ext/priv-app/SystemUI/SystemUI.apk',base)
tree=P/'pocket-fingerprint-smali'
if not tree.exists():disasm(base,'classes.dex','pocket-fingerprint-smali')
f=tree/'com/android/keyguard/KeyguardUpdateMonitor.smali';s=f.read_text();start=s.index('.method public shouldListenForFingerprint(Z)Z');q=s.index('\n',s.index('.registers',start))+1
hook='''
    invoke-static/range {p0 .. p0}, Lcom/android/systemui/doze/PocketFingerprintGate;->shouldBlock(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :pocket_fingerprint_allowed
    const/4 v0, 0x0
    return v0
    :pocket_fingerprint_allowed
'''
if ':pocket_fingerprint_allowed' not in s:s=s[:q]+hook+s[q:]
f.write_text(s)
f=tree/'com/android/systemui/biometrics/UdfpsController.smali';s=f.read_text();start=s.index('.method public static -$$Nest$monTouch(');q=s.index('\n',s.index('.registers',start))+1
hook='\n    invoke-static {}, Lcom/android/systemui/doze/PocketFingerprintGate;->isBlocked()Z\n    move-result v0\n    if-eqz v0, :pocket_touch_allowed\n    const/4 v0, 0x1\n    return v0\n    :pocket_touch_allowed\n'
if ':pocket_touch_allowed' not in s:s=s[:q]+hook+s[q:]
f.write_text(s)
f=tree/'com/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor.smali';s=f.read_text();start=s.index('.method public final show(Ljava/lang/String;Z)Z');q=s.index('\n',s.index('.registers',start))+1
hook='\n    invoke-static {}, Lcom/android/systemui/doze/PocketFingerprintGate;->isBlocked()Z\n    move-result v0\n    if-eqz v0, :pocket_bouncer_allowed\n    const/4 v0, 0x0\n    return v0\n    :pocket_bouncer_allowed\n'
if ':pocket_bouncer_allowed' not in s:s=s[:q]+hook+s[q:]
f.write_text(s)
for rel,method,label in [('com/android/systemui/biometrics/UdfpsController.smali','.method public final onFingerDown(JIFFFFFJJZ)V','pocket_down_allowed'),('com/android/systemui/doze/DozeTriggers.smali','.method public onSensor(IZFF[F)V','pocket_sensor_allowed')]:
 f=tree/rel;s=f.read_text();start=s.index(method);q=s.index('\n',s.index('.registers',start))+1
 hook='\n    invoke-static {}, Lcom/android/systemui/doze/PocketFingerprintGate;->isBlocked()Z\n    move-result v0\n    if-eqz v0, :'+label+'\n    return-void\n    :'+label+'\n'
 if ':'+label not in s:s=s[:q]+hook+s[q:]
 f.write_text(s)
f=tree/'com/android/systemui/doze/LunatikAodTransition.smali';s=f.read_text();start=s.index('.method private static apply(Landroid/service/dreams/DreamService;I)V');q=s.index('\n',s.index('.registers',start))+1
hook='\n    invoke-static {p0, p1}, Lcom/android/systemui/doze/PocketResume120;->adjust(Landroid/service/dreams/DreamService;I)I\n    move-result p1\n'
if 'PocketResume120;->adjust' not in s:s=s[:q]+hook+s[q:]
f.write_text(s)
f=tree/'com/android/systemui/doze/LunatikAodVisual$1.smali'
# The accepted visual handoff normally waits for 30Hz; reveal initial pocket phase too.
s=f.read_text();needle='    const/4 v0, 0x0'
hook='    :goto_47\n    invoke-static {}, Lcom/android/systemui/doze/PocketResume120;->isInitial()Z\n    move-result v3\n    if-eqz v3, :pocket_initial_ready_done\n    const/4 v2, 0x1\n    :pocket_initial_ready_done'
if ':pocket_initial_ready_done' not in s:s=s.replace('    :goto_47',hook,1)
f.write_text(s)
f=tree/'com/android/systemui/doze/LunatikAodVisual.smali';s=f.read_text();start=s.index('    invoke-static {}, Lcom/android/systemui/doze/LunatikAodPocket;->consumeResume()Z');end=s.index('    :cond_88',start)
block=s[start:end].replace('    sput v3, Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F','    const/high16 p0, 0x3f800000\n    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F').replace('Lcom/android/systemui/doze/LunatikAodVisual;->hiddenFrame()V','Lcom/android/systemui/doze/PocketResume120;->startVisual()V')
s=s[:start]+block+s[end:];f.write_text(s)
f=tree/'com/android/systemui/doze/LunatikAodVisual$1.smali';s=f.read_text();a=s.find('    invoke-static {}, Lcom/android/systemui/doze/PocketResume120;->isInitial()Z')
if a>=0:
 b=s.index('    :pocket_initial_ready_done',a)+len('    :pocket_initial_ready_done');s=s[:a]+s[b:]
f.write_text(s)
f=tree/'com/android/systemui/biometrics/UdfpsController.smali';s=f.read_text();start=s.index('.method public constructor <init>(');end=s.index('.end method',start);part=s[start:end];hook='    invoke-static/range {p0 .. p0}, Lcom/android/systemui/doze/PocketFingerprintGate;->capture(Ljava/lang/Object;)V\n'
part=part.replace(hook,'');needle='    invoke-direct {p0}, Ljava/lang/Object;-><init>()V';part=part.replace(needle,needle+'\n'+hook,1);s=s[:start]+part+s[end:]
f.write_text(s)
shutil.rmtree(P/'pocket-fingerprint-helper',ignore_errors=True)
dex=java(list((D/'src').glob('*.java')),'pocket-fingerprint-helper');(D/'helper.dex').write_bytes(dex)
run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',D/'helper.dex','-o',D/'helper-smali')
for f in (tree/'com/android/systemui/doze').glob('LunatikAodPocket*.smali'):f.unlink()
shutil.copytree(D/'helper-smali',tree,dirs_exist_ok=True)
pack(base,D/'SystemUI.pocket-fingerprint.apk',{'classes.dex':assemble(tree,'pocket-fingerprint')})
with zipfile.ZipFile(base) as a,zipfile.ZipFile(D/'SystemUI.pocket-fingerprint.apk') as b:
 changed=[n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)]
 assert changed==['classes.dex'],changed
(D/'verification.json').write_text(json.dumps({'changed':changed,'sha256':hashlib.sha256((D/'SystemUI.pocket-fingerprint.apk').read_bytes()).hexdigest()},indent=2))
