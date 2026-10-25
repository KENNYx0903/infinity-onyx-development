import sys,zipfile,json,hashlib
from pathlib import Path
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/notification-glass-test');base=Path('work/rom-build-next/files/system_ext/priv-app/Settings/Settings.apk')
dex=java(list((P/'src').rglob('*.java')),'settings-helper',P/'stub-classes')
with zipfile.ZipFile(base) as z:names=[n for n in z.namelist() if n.endswith('.dex') and b'Lcom/android/settings/display/BlurSettings;' in z.read(n)]
# The main dex contains fragment references too; the helper dex contains the generated title strings.
with zipfile.ZipFile(base) as z:names=[n for n in names if b'Blur radius' in z.read(n)]
assert len(names)==1,names
pack(base,D/'Settings.notification-glass.apk',{names[0]:dex})
(D/'settings-verification.json').write_text(json.dumps({'sha256':hashlib.sha256((D/'Settings.notification-glass.apk').read_bytes()).hexdigest(),'changed_dex':names[0]},indent=2))
