import sys,re,shutil,zipfile
from pathlib import Path
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/freeform-edge').resolve();tree=P/'freeform-edge-classes3';pkg=tree/'com/android/wm/shell/windowdecor'
f=pkg/'FluidResizeTaskPositioner.smali';s=f.read_text();pat=r'(?ms)(^\.method public final clampPosition\(\)V\n).*?^\.end method';s,n=re.subn(pat,lambda m:m[1]+'    .registers 1\n    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->clamp(Ljava/lang/Object;)V\n    return-void\n.end method',s);assert n==1;f.write_text(s)
f=pkg/'LunatikFreeformEffects.smali';s=f.read_text()
for name,args,signature in [('transform','p0','Ljava/lang/Object;'),('destroyTask','p0, p1','Ljava/lang/Object;Ljava/lang/Object;')]:
 method='update' if name=='transform' else 'destroy';start=s.index('.method public static '+name+'(');q=s.index('\n',s.index('.registers',start))+1;line='\n    invoke-static {'+args+'}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->'+method+'('+signature+')V\n'
 if line not in s[start:s.index('.end method',start)]:s=s[:q]+line+s[q:]
f.write_text(s)
shutil.rmtree(D/'helper-smali',ignore_errors=True)
shutil.rmtree(P/'freeform-edge-helper',ignore_errors=True)
helper=java(list((D/'src').rglob('*.java')),'freeform-edge-helper');(D/'helper.dex').write_bytes(helper);run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',D/'helper.dex','-o',D/'helper-smali')

# Remove obsolete classes from the abandoned overlay prototype.
for old in tree.glob('com/android/wm/shell/windowdecor/EdgeFreeform*.smali'):old.unlink()
shutil.copytree(D/'helper-smali',tree,dirs_exist_ok=True)
pack(D/'baseline.apk',D/'SystemUI.edge.apk',{'classes3.dex':assemble(tree,'freeform-edge')})
