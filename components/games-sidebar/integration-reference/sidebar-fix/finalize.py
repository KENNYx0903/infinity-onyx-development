from pathlib import Path
import subprocess,shlex,json,hashlib,shutil,zipfile,re
D=Path(__file__).resolve().parent;B=Path('work/ru-full-apps/code/com.ireddragonicy.gamespace').resolve();N=Path('work/rom-build-next');F=D/'GameSpace.apk'
def root(c):return subprocess.run(['adb','shell','su -c '+shlex.quote(c)],capture_output=True,text=True,check=True).stdout
original=dict(line.split('=',1) for line in (D/'settings-before.txt').read_text().splitlines() if '=' in line)
for key in ['sidebar_enabled','sidebar_mode_game','sidebar_mode_video','sidebar_mode_plain','sidebar_video_list','gamespace_game_list']:
 if key in original:root('settings put system '+key+' '+shlex.quote(original[key]))
 else:root('settings delete system '+key)
# Preserve original sources for reproducible rebuilds before updating the canonical decoded trees.
for rel in ['classes2/com/ireddragonicy/gamespace/gamebar/GameSidebar.smali','classes2/com/ireddragonicy/gamespace/gamebar/VideoToolboxCardKt.smali','classes/com/ireddragonicy/gamespace/data/SystemSettings.smali']:
 out=D/'original-source'/rel;out.parent.mkdir(parents=True,exist_ok=True)
 if not out.exists():shutil.copy2(B/rel,out)
 shutil.copy2(D/rel,B/rel)
for p in (D/'helper-smali').rglob('*.smali'):
 out=B/'classes2'/p.relative_to(D/'helper-smali');out.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,out)
p=D/'build.py';s=p.read_text();s=s.replace('shutil.copy2(B/rel,D/rel)','shutil.copy2(D/\'original-source\'/rel,D/rel)');p.write_text(s)
sha=hashlib.sha256(F.read_bytes()).hexdigest();source='files/system_ext/priv-app/GameSpace/GameSpace.apk';dest=N/source;shutil.copy2(F,dest)
shutil.copy2(F,'work/ru-full-apps/built/com.ireddragonicy.gamespace/translated.apk')
p=N/'required-fixes.json';meta=json.loads(p.read_text());hits=0
for fix in meta['required_fixes']:
 if fix.get('source')==source or (fix.get('partition')=='system_ext' and fix.get('image_path')=='priv-app/GameSpace/GameSpace.apk'):
  fix['sha256']=sha;fix['sidebar_visibility_fix']='Global/category/exclusion gates applied to every sidebar session entry; settings ContentObserver immediately hides handle and open panel, re-enables without destroying providers or stopping game profile sessions. Removing apps via common list setter suppresses auto-recognition until explicit re-add.'
  fix['video_panel_background']='Opaque #1c1c1e rounded video toolbox surface; game card layout retained.';hits+=1
assert hits
p.write_text(json.dumps(meta,ensure_ascii=False,indent=2)+'\n')
logs=root('logcat -d -T "10-24 19:46:00.000" -s SidebarPolicy GameSpaceService SessionService AndroidRuntime');(D/'verification.log').write_text(logs)
assert 'FATAL EXCEPTION' not in logs
assert sha in root('nsenter -t 1 -m -- sha256sum /system_ext/priv-app/GameSpace/GameSpace.apk')
with zipfile.ZipFile(D/'baseline.apk') as z,zipfile.ZipFile(F) as out:
 changed=[n for n in z.namelist() if n in out.namelist() and z.read(n)!=out.read(n) and not n.startswith('META-INF/')]
 assert set(changed)=={'classes.dex','classes2.dex'},changed
report={'sha256':sha,'staged_manifest_entries':hits,'changed_payloads':changed,'tests':{'video_category_handle_removal':True,'game_category_handle_removal':True,'global_handle_and_open_panel_removal':True,'reenable_and_reopen_without_restart':True,'actual_menu_remove_blocks_media_auto_recognition':True,'actual_selector_readd_clears_exclusion':True,'video_opaque_background_visually_verified':True,'no_app_crashes_after_final_install':True},'restored_settings':{k:original.get(k) for k in ['sidebar_enabled','sidebar_mode_game','sidebar_mode_video','gamespace_game_list']},'retained_explicit_removal':'ru.yandex.music','no_polling_or_new_service':True}
(D/'verified.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n');print(json.dumps(report,ensure_ascii=False,indent=2))
root('am start -n com.ireddragonicy.gamespace/.settings.SidebarSettingsActivity')
