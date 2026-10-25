from pathlib import Path
import sys,shutil,json,hashlib
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/qsb-only-glass').resolve();base=Path('work/themed-icon-glass-test/baseline.apk');tree=P/'qsb-only-classes2'
if not tree.exists():disasm(base,'classes2.dex','qsb-only-classes2')
f=tree/'com/android/launcher3/qsb/QsbOuterDrawable.smali';s=f.read_text();needle='    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V'
if 'QsbGlass;->draw' not in s:s=s.replace(needle,'    invoke-static {p0, p1}, Lcom/android/launcher3/qsb/QsbGlass;->draw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)Z\n    move-result v2\n    if-nez v2, :qsb_outer_done\n    iget-object v2, p0, Lcom/android/launcher3/qsb/QsbOuterDrawable;->mRect:Landroid/graphics/RectF;\n'+needle+'\n    :qsb_outer_done')
f.write_text(s);dex=java(list((D/'src').glob('*.java')),'qsb-only-helper');(D/'helper.dex').write_bytes(dex);shutil.rmtree(D/'helper-smali',ignore_errors=True);run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',D/'helper.dex','-o',D/'helper-smali');shutil.copytree(D/'helper-smali',tree,dirs_exist_ok=True);pack(base,D/'Launcher.qsb-only.apk',{'classes2.dex':assemble(tree,'qsb-only')});(D/'verification.json').write_text(json.dumps({'sha256':hashlib.sha256((D/'Launcher.qsb-only.apk').read_bytes()).hexdigest(),'test_only':True},indent=2))
