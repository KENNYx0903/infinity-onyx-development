import sys
from common import *
from xmlpatch import patch
from arscpatch import patcharsc
qs_default=__import__('xml-default').qs_default
run(J/'bin/javac','--release','8','-cp',ANDROID,'-d',P/'stub-classes',*(P/'stubs').rglob('*.java'));b=java(list((P/'src').rglob('*.java')),'settings-helper',P/'stub-classes');(P/'settings-helper.dex').write_bytes(b)
z=zipfile.ZipFile(P/'Settings.base.apk');i=2
while 'classes%d.dex'%i in z.namelist():i+=1
pack(P/'Settings.base.apk',P/'Settings.blur.apk',{'res/xml/infinity_suite_quicksettings.xml':qs_default(z.read('res/xml/infinity_suite_quicksettings.xml')),'resources.arsc':patcharsc(z.read('resources.arsc')),'res/xml/display_settings.xml':patch(z.read('res/xml/display_settings.xml')),'classes%d.dex'%i:b})
sys.path.insert(0,'work/settings-search-surface')
from settings_search_patch import patch_search
with zipfile.ZipFile(P/'Settings.blur.apk') as tempz: search_raw,search_bg=patch_search(tempz.read('resources.arsc'),tempz.read('res/drawable/search_bar_selected_background.xml'))
pack(P/'Settings.blur.apk',P/'Settings.blur.apk',{'resources.arsc':search_raw,'res/drawable/search_bar_selected_background.xml':search_bg})
