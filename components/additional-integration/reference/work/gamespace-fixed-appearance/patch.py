from pathlib import Path
import re,json,shutil
B=Path('work/ru-full-apps/code/com.ireddragonicy.gamespace');D=Path('work/gamespace-fixed-appearance');changes=[]
def edit(p,s):
 r=p.relative_to(B);q=D/'backup'/r;q.parent.mkdir(parents=True,exist_ok=True)
 if not q.exists():shutil.copy2(p,q)
 p.write_text(s);changes.append(str(r))
def method(s,name,body):
 pat=r'(?ms)^\.method ([^\n]* '+re.escape(name)+r'\([^\n]*)\n.*?^\.end method'
 s,n=re.subn(pat,lambda m:'.method '+m[1]+'\n'+body+'\n.end method',s);assert n==1,(name,n);return s
# Freeze appearance fields, retaining user button selection and rail position/offset.
p=B/'classes/com/ireddragonicy/gamespace/data/SidebarStyle.smali';s=p.read_text()
keep={'getVisibleButtons','getPosition','getHandleOffsetY','getHandleAutoHide'}
for m in list(re.finditer(r'(?ms)^\.method public final (get\w+)\([^\n]*\n.*?^\.end method',s)):
 if m[1] in keep:continue
 block=m[0];assert 'iget' in block
 block=block.replace('.registers 1','.registers 2')
 block=re.sub(r'(    iget(?:-object|-boolean)? p0, )p0,',r'    sget-object v0, Lcom/ireddragonicy/gamespace/data/SidebarStyle;->DEFAULT:Lcom/ireddragonicy/gamespace/data/SidebarStyle;\n\n\1v0,',block)
 s=s.replace(m[0],block)
edit(p,s)
p=B/'classes/com/ireddragonicy/gamespace/data/AppSettings.smali';s=p.read_text()
for name,val in [('getPanelColorMode',0),('getMenuOpacity',100),('getEnableBlur',0),('getBlurRadius',0)]:s=method(s,name,f'    .registers 2\n    const/16 v0, {val}\n    return v0')
edit(p,s)
# Filter appearance settings by stable keys and the Studio link (localized title).
p=B/'classes2/com/ireddragonicy/gamespace/hub/HubSettingsActivityKt.smali';s=p.read_text()
needle='filled-new-array/range {v19 .. v45}, [Lcom/ireddragonicy/gamespace/hub/SettingRow;'
pos=s.index(needle);tail=s[pos:];old='Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;';assert old in tail
tail=tail.replace(old,'Lcom/ireddragonicy/gamespace/hub/FixedPanelAppearance;->rows([Ljava/lang/Object;)Ljava/util/List;',1);edit(p,s[:pos]+tail)
p=B/'classes2/com/ireddragonicy/gamespace/hub/FixedPanelAppearance.smali'
header='Lcom/ireddragonicy/gamespace/hub/'
p.write_text('''.class public final Lcom/ireddragonicy/gamespace/hub/FixedPanelAppearance;
.super Ljava/lang/Object;
.method public static rows([Ljava/lang/Object;)Ljava/util/List;
 .registers 8
 new-instance v0, Ljava/util/ArrayList;
 invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
 const/4 v1, 0x0
 array-length v2, p0
 :loop
 if-ge v1, v2, :done
 aget-object v3, p0, v1
 instance-of v4, v3, Lcom/ireddragonicy/gamespace/hub/Choice;
 if-eqz v4, :slider
 move-object v4, v3
 check-cast v4, Lcom/ireddragonicy/gamespace/hub/Choice;
 invoke-virtual {v4}, Lcom/ireddragonicy/gamespace/hub/Choice;->getKey()Ljava/lang/String;
 move-result-object v4
 const-string v5, "gamespace_panel_color_mode"
 invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
 move-result v4
 if-nez v4, :next
 :slider
 instance-of v4, v3, Lcom/ireddragonicy/gamespace/hub/IntSlider;
 if-eqz v4, :link
 move-object v4, v3
 check-cast v4, Lcom/ireddragonicy/gamespace/hub/IntSlider;
 invoke-virtual {v4}, Lcom/ireddragonicy/gamespace/hub/IntSlider;->getKey()Ljava/lang/String;
 move-result-object v4
 const-string v5, "gamespace_icon_idle_alpha"
 invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
 move-result v4
 if-nez v4, :next
 :link
 instance-of v4, v3, Lcom/ireddragonicy/gamespace/hub/Link;
 if-eqz v4, :add
 move-object v4, v3
 check-cast v4, Lcom/ireddragonicy/gamespace/hub/Link;
 invoke-virtual {v4}, Lcom/ireddragonicy/gamespace/hub/Link;->getTitle()Ljava/lang/String;
 move-result-object v4
 const-string v5, "Sidebar Studio"
 invoke-static {v5}, Lcom/infinity/localization/RuUiText;->text(Ljava/lang/String;)Ljava/lang/String;
 move-result-object v5
 invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
 move-result v4
 if-nez v4, :next
 :add
 invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
 :next
 add-int/lit8 v1, v1, 0x1
 goto :loop
 :done
 return-object v0
.end method
''');changes.append(str(p.relative_to(B)))
p=B/'classes2/com/ireddragonicy/gamespace/settings/SidebarSettingsActivityKt.smali';s=p.read_text()
for m in list(re.finditer(r'(?ms)^\.method .*?^\.end method',s)):
 if '"Sidebar Studio"' in m[0]:
  sig=m[0].splitlines()[0];assert sig.endswith('Lkotlin/Unit;')
  s=s.replace(m[0],sig+'\n    .locals 1\n    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;\n    return-object v0\n.end method')
edit(p,s)
p=B/'classes2/com/ireddragonicy/gamespace/settings/sidebarstudio/SidebarStudioActivity.smali';s=p.read_text();s=method(s,'onCreate','    .registers 2\n    invoke-super {p0, p1}, Lcom/ireddragonicy/gamespace/settings/sidebarstudio/Hilt_SidebarStudioActivity;->onCreate(Landroid/os/Bundle;)V\n    invoke-virtual {p0}, Landroid/app/Activity;->finish()V\n    return-void');edit(p,s)
# Remove overlay color row and blur controls. Keep record defaults and tile management.
p=B/'classes2/com/ireddragonicy/gamespace/gamebar/PanelEditKt.smali';s=p.read_text();s,n=re.subn(r'^    invoke-static[^\n]*PanelEditKt;->PanelColorRow\([^\n]*\n','',s,flags=re.M);assert n==1
pos=s.index('"Glassmorphism Blur"');end=s.index('->SettingToggleRow(',pos);start=s.rfind('    invoke-static',pos,end);stop=s.index('\n',end);s=s[:start]+s[stop:]
# The branch is fixed off as well: stale in-memory values cannot reveal the radius editor.
pos=s.index('"Glassmorphism Blur"');a=s.index('    if-eqz v7, :cond_caf',pos);s=s[:a]+'    const/4 v7, 0x0\n\n'+s[a:]
edit(p,s)
(D/'changes.json').write_text(json.dumps(changes,indent=2));print('Patched',len(changes),'files')
