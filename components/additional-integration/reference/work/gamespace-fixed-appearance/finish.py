from pathlib import Path
import re,shutil
B=Path('work/ru-full-apps/code/com.ireddragonicy.gamespace');D=Path('work/gamespace-fixed-appearance')
def save(p,s):
 q=D/'backup'/p.relative_to(B);q.parent.mkdir(parents=True,exist_ok=True)
 if not q.exists():shutil.copy2(p,q)
 p.write_text(s)
p=B/'classes/com/ireddragonicy/gamespace/data/SidebarStyle.smali';s=p.read_text()
for name in ['effectiveEdge','effectiveHandle']:
 pat=r'(?ms)(^\.method public final '+name+r'\(\)[^\n]*\n    \.registers 3\n)'
 s,n=re.subn(pat,r'\1\n    sget-object p0, Lcom/ireddragonicy/gamespace/data/SidebarStyle;->DEFAULT:Lcom/ireddragonicy/gamespace/data/SidebarStyle;\n',s);assert n==1
save(p,s)
p=B/'classes2/com/ireddragonicy/gamespace/gamebar/PanelEditKt.smali';s=p.read_text()
# Turn the standalone color editor into an empty composable; all entry points become inert.
pat=r'(?ms)(^\.method private static final PanelColorRow\([^\n]*\n).*?^\.end method'
s,n=re.subn(pat,r'\1    .locals 0\n    return-void\n.end method',s);assert n==1
pos=s.index('"Glassmorphism Blur"');end=s.index('->SettingToggleRow(',pos);start=s.rfind('    invoke-static',pos,end);stop=s.index('\n',end);s=s[:start]+s[stop:]
pos=s.index('"Glassmorphism Blur"');a=s.index('    if-eqz v7, :cond_caf',pos);s=s[:a]+'    const/4 v7, 0x0\n\n'+s[a:]
save(p,s)
print('Overlay appearance controls removed; custom rail geometry ignored')
