from pathlib import Path
import sys,zipfile,shutil,json,hashlib
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/blur-modes').resolve()
# Fresh live bases preserve all accepted changes, excluding canceled themed-icon experiments.
for name,dex,out in [('SystemUI','classes2.dex','modes-sysui2'),('Launcher','classes2.dex','modes-launcher2')]:
 if not (P/out).exists():disasm(D/(name+'.base.apk'),dex,out)
run(J/'bin/javac','--release','8','-cp',ANDROID,'-d',P/'stub-classes',*(P/'stubs').rglob('*.java'))
settingsdex=java(list((P/'src').rglob('*.java')),'modes-settings-helper',P/'stub-classes')
pack(D/'Settings.base.apk',D/'Settings.blur-modes.apk',{'classes4.dex':settingsdex})
# Core scrim/radius overrides bypassed in standard mode.
tree=P/'modes-sysui2';f=tree/'com/android/systemui/statusbar/phone/ScrimController.smali';s=f.read_text();needle='    invoke-static {p0}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->scrim(Ljava/lang/Object;)V'
hook='\n    invoke-static {}, Lcom/android/systemui/statusbar/LunatikBlurConfig;->customEnabled()Z\n    move-result v0\n    if-eqz v0, :cond_6c\n'
if 'LunatikBlurConfig;->customEnabled' not in s:s=s.replace(needle,needle+hook)
f.write_text(s)
helper=java(list(Path('work/notification-glass-test/src').glob('*.java')),'modes-notification-helper');(D/'notification-helper.dex').write_bytes(helper);out=D/'notification-smali';shutil.rmtree(out,ignore_errors=True);run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',D/'notification-helper.dex','-o',out);shutil.copytree(out,tree,dirs_exist_ok=True)
config=java(list((P/'sysui-src').rglob('*.java')),'modes-config-helper')
pack(D/'SystemUI.base.apk',D/'SystemUI.blur-modes.apk',{'classes2.dex':assemble(tree,'modes-sysui2'),'classes4.dex':config})
# Launcher: only QSB background mode gate + settings availability; no icon/menu hooks.
tree=P/'modes-launcher2';f=tree/'com/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment.smali';s=f.read_text();start=s.index('.method public onResume()V');q=s.index('\n',s.index('.registers',start))+1
if 'BlurModePreferences;->attach' not in s:s=s[:q]+'    invoke-static {p0}, Lcom/android/launcher3/qsb/BlurModePreferences;->attach(Ljava/lang/Object;)V\n'+s[q:]
if '.method public onPause()V' not in s:s+='\n.method public onPause()V\n    .registers 1\n    invoke-static {p0}, Lcom/android/launcher3/qsb/BlurModePreferences;->detach(Ljava/lang/Object;)V\n    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V\n    return-void\n.end method\n'
f.write_text(s)
f=tree/'com/android/launcher3/settings/SettingsHomescreen$HomescreenSettingsFragment.smali';s=f.read_text()
for method,hook in [('onResume','attach'),('onPause','detach')]:
 if f'.method public {method}()V' in s:
  start=s.index(f'.method public {method}()V');q=s.index('\n',s.index('.registers',start))+1
  if f'BlurModePreferences;->{hook}' not in s:s=s[:q]+f'    invoke-static {{p0}}, Lcom/android/launcher3/qsb/BlurModePreferences;->{hook}(Ljava/lang/Object;)V\n'+s[q:]
 else:s+=f'\n.method public {method}()V\n    .registers 1\n    invoke-super {{p0}}, Landroidx/preference/PreferenceFragmentCompat;->{method}()V\n    invoke-static {{p0}}, Lcom/android/launcher3/qsb/BlurModePreferences;->{hook}(Ljava/lang/Object;)V\n    return-void\n.end method\n'
f.write_text(s)
sources=list(Path('work/qsb-only-glass/src').glob('*.java'))+list((D/'launcher-src').glob('*.java'));helper=java(sources,'modes-launcher-helper');(D/'launcher-helper.dex').write_bytes(helper);out=D/'launcher-smali';shutil.rmtree(out,ignore_errors=True);run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',D/'launcher-helper.dex','-o',out);shutil.copytree(out,tree,dirs_exist_ok=True)
pack(D/'Launcher.base.apk',D/'Launcher.blur-modes.apk',{'classes2.dex':assemble(tree,'modes-launcher2')})
(D/'verification.json').write_text(json.dumps({name:hashlib.sha256((D/(name+'.blur-modes.apk')).read_bytes()).hexdigest() for name in ['Launcher','Settings','SystemUI']},indent=2))
