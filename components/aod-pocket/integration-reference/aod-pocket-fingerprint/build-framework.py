import sys,shutil,zipfile
from pathlib import Path
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/aod-pocket-fingerprint').resolve();base=Path('work/rom-build-next/files/system/framework/services.jar');tree=P/'pocket-wake-services'
if not tree.exists():disasm(base,'classes.dex','pocket-wake-services')
f=tree/'com/android/server/policy/PhoneWindowManager.smali';s=f.read_text();start=s.index('.method public final interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I');q=s.index('\n',s.index('.registers',start))+1
hook='\n    invoke-static/range {p0 .. p1}, Lcom/android/server/policy/PocketWakeGate;->block(Ljava/lang/Object;Landroid/view/KeyEvent;)Z\n    move-result v0\n    if-eqz v0, :aod_pocket_wake_allowed\n    const/4 v0, 0x0\n    return v0\n    :aod_pocket_wake_allowed\n'
if ':aod_pocket_wake_allowed' not in s:s=s[:q]+hook+s[q:]
f.write_text(s)
helper=java(list((D/'framework-src').glob('*.java')),'pocket-wake-helper');(D/'framework-helper.dex').write_bytes(helper)
run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',D/'framework-helper.dex','-o',D/'framework-helper-smali');shutil.copytree(D/'framework-helper-smali',tree,dirs_exist_ok=True)
dex=assemble(tree,'pocket-wake-services')
with zipfile.ZipFile(base) as a,zipfile.ZipFile(D/'services.pocket-wake.jar','w') as b:
 for i in a.infolist():b.writestr(i,dex if i.filename=='classes.dex' else a.read(i.filename))
