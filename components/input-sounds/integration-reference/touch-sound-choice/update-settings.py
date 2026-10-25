from pathlib import Path
import subprocess,shlex,hashlib
D=Path('work/touch-sound-choice');apk=D/'Settings.touch-sounds.apk';sha=hashlib.sha256(apk.read_bytes()).hexdigest()[:8];remote='/data/adb/lunatik-touch-sounds/Settings.'+sha+'.apk'
def root(c):return subprocess.check_output(['adb','shell','su -c '+shlex.quote(c)],text=True)
subprocess.run(['adb','install','--no-incremental','-r',str(apk)],check=True)
subprocess.run(['adb','push',str(apk),'/data/local/tmp/touch-settings.apk'],check=True,stdout=subprocess.DEVNULL)
root(f'cp /data/local/tmp/touch-settings.apk {remote}; chmod 0644 {remote}; chcon u:object_r:system_file:s0 {remote}')
boot=root('cat /data/adb/post-fs-data.d/98-lunatik-touch-sounds.sh');lines=boot.splitlines();lines=[f'nsenter -t 1 -m -- mount --bind {remote} /system_ext/priv-app/Settings/Settings.apk || exit 1' if '/system_ext/priv-app/Settings/Settings.apk' in l else l for l in lines];(D/'boot.final.sh').write_text('\n'.join(lines)+'\n')
subprocess.run(['adb','push',str(D/'boot.final.sh'),'/data/local/tmp/touch-boot.sh'],check=True,stdout=subprocess.DEVNULL)
root('cp /data/local/tmp/touch-boot.sh /data/adb/post-fs-data.d/98-lunatik-touch-sounds.sh; chmod 0755 /data/adb/post-fs-data.d/98-lunatik-touch-sounds.sh')
root(f'nsenter -t 1 -m -- mount --bind {remote} /system_ext/priv-app/Settings/Settings.apk')
subprocess.run(['adb','shell','am','force-stop','com.android.settings'],check=True)
subprocess.run(['adb','shell','am','start','-a','android.settings.SOUND_SETTINGS'],check=True)
