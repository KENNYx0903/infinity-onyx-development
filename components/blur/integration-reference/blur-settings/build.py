# Rebuild final accepted source trees; prepare.py is retained only as initial-work history.
from common import *
from xmlpatch import patch
from arscpatch import patcharsc
qs_default=__import__('xml-default').qs_default
import json,hashlib
run(J/'bin/javac','--release','8','-cp',ANDROID,'-d',P/'stub-classes',*(P/'stubs').rglob('*.java'))
settings=java(list((P/'src').rglob('*.java')),'settings-helper',P/'stub-classes')
launcher=java(list((P/'launcher-src').rglob('*.java')),'launcher-helper')
sysui=java(list((P/'sysui-src').rglob('*.java')),'sysui-helper')
def nextdex(apk):
 z=zipfile.ZipFile(apk);i=2
 while 'classes%d.dex'%i in z.namelist():i+=1
 return 'classes%d.dex'%i
base=P/'Settings.base.apk';z=zipfile.ZipFile(base)
pack(base,P/'Settings.blur.apk',{'res/xml/infinity_suite_quicksettings.xml':qs_default(z.read('res/xml/infinity_suite_quicksettings.xml')),'resources.arsc':patcharsc(z.read('resources.arsc')),'res/xml/display_settings.xml':patch(z.read('res/xml/display_settings.xml')),nextdex(base):settings})
sys.path.insert(0,'work/settings-search-surface')
from settings_search_patch import patch_search
with zipfile.ZipFile(P/'Settings.blur.apk') as tempz: search_raw,search_bg=patch_search(tempz.read('resources.arsc'),tempz.read('res/drawable/search_bar_selected_background.xml'))
pack(P/'Settings.blur.apk',P/'Settings.blur.apk',{'resources.arsc':search_raw,'res/drawable/search_bar_selected_background.xml':search_bg})
base=P/'Launcher.base.apk'
changes={'classes.dex':assemble(P/'launcher-classes','launcher'),nextdex(base):launcher}
toggle_src=Path('work/drawer-label-toggle/src')
if toggle_src.exists():
 changes['classes2.dex']=assemble(P/'drawer-launcher-classes2','drawer-launcher2')
 idx=int(nextdex(base)[7:-4])+1
 changes['classes%d.dex'%idx]=java(list(toggle_src.rglob('*.java')),'drawer-toggle-helper',P/'stub-classes')
sys.path.insert(0,'work/translation-last-screen')
from patch_launcher import patch_launcher
changes['resources.arsc']=patch_launcher(zipfile.ZipFile(base).read('resources.arsc'))
pack(base,P/'Launcher.blur.apk',changes)
base=Path('work/control-center-launcher-blur-test/baseline.apk');pack(base,P/'SystemUI.blur.apk',{'classes.dex':assemble(P/'pocket-fingerprint-smali','pocket-fingerprint'),'classes2.dex':assemble(P/'sysui-classes2','sysui'),'classes3.dex':assemble(P/'freeform-edge-classes3','freeform-edge'),nextdex(base):sysui})
(P/'build-verification.json').write_text(json.dumps({n:hashlib.sha256((P/n).read_bytes()).hexdigest() for n in ['Settings.blur.apk','Launcher.blur.apk','SystemUI.blur.apk']},indent=2)+'\n')
