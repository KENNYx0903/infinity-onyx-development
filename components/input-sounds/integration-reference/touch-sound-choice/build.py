from pathlib import Path
import sys,zipfile,shutil
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/touch-sound-choice').resolve()
for base,dex,out in [('services.base.jar','classes.dex','touch-services'),('Settings.base.apk','classes2.dex','touch-settings2')]:
 if not (P/out).exists():disasm(D/base,dex,out)
# SoundEffectsHelper context captured at normal SoundPool load; no service or polling.
f=P/'touch-services/com/android/server/audio/SoundEffectsHelper.smali';s=f.read_text();start=s.index('.method public static -$$Nest$monLoadSoundEffects(');q=s.index('\n',s.index('.registers',start))+1
if 'TouchSoundConfig;->init' not in s:s=s[:q]+'\n    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;\n    invoke-static {v0}, Lcom/android/server/audio/TouchSoundConfig;->init(Landroid/content/Context;)V\n'+s[q:]
a=s.index('.method public static getResourceFilePath(');b=s.index('.end method',a);part=s[a:b]
for reg in ([] if 'TouchSoundConfig;->path' in part else ['p0','v0']):
 part=part.replace('    return-object '+reg,'    invoke-static {'+reg+'}, Lcom/android/server/audio/TouchSoundConfig;->path(Ljava/lang/String;)Ljava/lang/String;\n    move-result-object '+reg+'\n    return-object '+reg)
s=s[:a]+part+s[b:];f.write_text(s)
# Restore original TouchSoundPreference (platform metadata class); unique helper name.
tmp=P/'touch-settings-restore'
if not tmp.exists():disasm(D/'Settings.base.apk','classes2.dex','touch-settings-restore')
for f0 in (tmp/'com/android/settings/notification').glob('TouchSoundPreference*.smali'):
 shutil.copy2(f0,P/'touch-settings2/com/android/settings/notification'/f0.name)
for f0 in (P/'touch-settings2/com/android/settings/notification').glob('TouchSoundPreference$$ExternalSyntheticLambda*.smali'):
 if not (tmp/'com/android/settings/notification'/f0.name).exists():f0.unlink()
# Add the selector alongside the native touch-sounds switch.
f=P/'touch-settings2/com/android/settings/notification/SoundSettings.smali';s=(tmp/'com/android/settings/notification/SoundSettings.smali').read_text()
needle='    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V'
s=s.replace(needle,needle+'\n    invoke-static {p0}, Lcom/android/settings/notification/LunatikTouchSoundPreference;->attach(Ljava/lang/Object;)V')
f.write_text(s)
for src,name,tree in [('server-src','touch-server-helper','touch-services'),('settings-src','touch-pref-helper','touch-settings2')]:
 dex=java(list((D/src).glob('*.java')),name,P/'stub-classes' if src=='settings-src' else None);out=D/(name+'-smali');shutil.rmtree(out,ignore_errors=True);df=D/(name+'.dex');df.write_bytes(dex);run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',df,'-o',out);shutil.copytree(out,P/tree,dirs_exist_ok=True)
# Preserve all other entries, including accepted AOD/pocket and optional Google install policy.
dex=assemble(P/'touch-services','touch-services');
with zipfile.ZipFile(D/'services.base.jar') as z,zipfile.ZipFile(D/'services.touch-sounds.jar','w') as w:
 for i in z.infolist():w.writestr(i,dex if i.filename=='classes.dex' else z.read(i.filename))
pack(D/'Settings.base.apk',D/'Settings.touch-sounds.apk',{'classes2.dex':assemble(P/'touch-settings2','touch-settings2')})
print('Built Settings and services')
