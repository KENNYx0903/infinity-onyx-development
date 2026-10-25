import sys,shutil,zipfile,json,hashlib
from pathlib import Path
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/notification-glass-test').resolve();base=D/'baseline.apk'
if not base.exists():shutil.copy2('work/rom-build-next/files/system_ext/priv-app/SystemUI/SystemUI.apk',base)
tree=P/'notification-glass-smali'
if not tree.exists():disasm(base,'classes2.dex','notification-glass-smali')
f=tree/'com/android/systemui/statusbar/notification/row/NotificationBackgroundView.smali';s=f.read_text();start=s.index('.method public final onDraw(Landroid/graphics/Canvas;)V');q=s.index('\n',s.index('.registers',start))+1
hook='\n    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->draw(Ljava/lang/Object;)V\n'
if 'NotificationGlass;->draw' not in s:s=s[:q]+hook+s[q:]
f.write_text(s)
shutil.rmtree(D/'helper-smali',ignore_errors=True)
# Only drawable hook remains in Guts; lifecycle follows actual native Animator instances.
f=tree/'com/android/systemui/statusbar/notification/row/NotificationGuts.smali';s=f.read_text();s='\n'.join(line for line in s.split('\n') if 'NotificationGlass;->exposed' not in line)
start=s.index('.method public animateClose(II)V');end=s.index('.end method',start);part=s[start:end];needle='    invoke-virtual {p1}, Landroid/animation/Animator;->start()V';hook='    const/4 v0, 0x0\n    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->animate(Ljava/lang/Object;Landroid/animation/Animator;Z)V\n'
if 'NotificationGlass;->animate' not in part:part=part.replace(needle,hook+needle);s=s[:start]+part+s[end:]
f.write_text(s)
f=tree/'com/android/systemui/statusbar/notification/row/NotificationGuts$AnimateCloseListener.smali';s=f.read_text();s='\n'.join(line for line in s.split('\n') if 'NotificationGlass;->closed' not in line);f.write_text(s)
f=tree/'com/android/systemui/statusbar/notification/row/NotificationGutsManager$1.smali';s=f.read_text();needle='    invoke-virtual {v4}, Landroid/animation/Animator;->start()V';hook='    const/4 v5, 0x1\n    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->animate(Ljava/lang/Object;Landroid/animation/Animator;Z)V\n'
if 'NotificationGlass;->animate' not in s:s=s.replace(needle,hook+needle)
f.write_text(s)
for rel,signature in [('com/android/systemui/statusbar/notification/row/NotificationBackgroundView.smali','.method public final setCustomBackground$1()V'),('com/android/systemui/statusbar/notification/row/NotificationGuts.smali','.method public final onFinishInflate()V')]:
 f=tree/rel;s=f.read_text();start=s.index(signature);end=s.index('.end method',start);part=s[start:end];hook='    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->draw(Ljava/lang/Object;)V\n'
 if hook.strip() not in part:part=part.replace('    return-void',hook+'    return-void');s=s[:start]+part+s[end:]
 f.write_text(s)
for rel,signature in [('com/android/systemui/volume/dialog/VolumeDialog.smali','.method public final onStart()V'),('com/android/systemui/volume/VolumePanelDialog.smali','.method public final start()V')]:
 f=tree/rel;s=f.read_text();start=s.index(signature);end=s.index('.end method',start);part=s[start:end];hook='    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volume(Ljava/lang/Object;)V\n'
 part='\n'.join(line for line in part.split('\n') if 'NotificationGlass;->volume' not in line);pos=part.index('\n',part.index('.registers'))+1;part=part[:pos]+hook+part[pos:];s=s[:start]+part+s[end:]
 f.write_text(s)
dex=java(list((D/'src').glob('*.java')),'notification-glass-helper');(D/'helper.dex').write_bytes(dex);run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',D/'helper.dex','-o',D/'helper-smali');shutil.copytree(D/'helper-smali',tree,dirs_exist_ok=True)
pack(base,D/'SystemUI.notification-glass.apk',{'classes.dex':assemble(Path('work/volume-glass-test/classes1').resolve(),'volume-glass-classes1'),'classes2.dex':assemble(tree,'notification-glass')})
(D/'verification.json').write_text(json.dumps({'sha256':hashlib.sha256((D/'SystemUI.notification-glass.apk').read_bytes()).hexdigest(),'test_only':True},indent=2))
