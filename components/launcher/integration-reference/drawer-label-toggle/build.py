import sys
from pathlib import Path
sys.path.insert(0,'work/blur-settings')
from common import *
D=Path('work/drawer-label-toggle').resolve()
f=P/'drawer-launcher-classes2/com/android/launcher3/settings/SettingsAppDrawer$AppDrawerSettingsFragment.smali';s=f.read_text();start=s.index('.method public onCreatePreferences(');end=s.index('.end method',start);a=s[start:end]
if 'DrawerLabelToggle;->attach' not in a:
 a=a.replace('    return-void','    invoke-static {p0}, Lcom/android/launcher3/icons/DrawerLabelToggle;->attach(Ljava/lang/Object;)V\n\n    return-void');s=s[:start]+a+s[end:];f.write_text(s)
run(J/'bin/javac','--release','8','-cp',ANDROID,'-d',P/'stub-classes',*(P/'stubs').rglob('*.java'))
helper=java(list((D/'src').rglob('*.java')),'drawer-toggle-helper',P/'stub-classes')
base=D/'baseline.apk';z=zipfile.ZipFile(base);i=2
while 'classes%d.dex'%i in z.namelist():i+=1
pack(base,D/'Launcher.toggle.apk',{'classes.dex':assemble(P/'launcher-classes','launcher'),'classes2.dex':assemble(P/'drawer-launcher-classes2','drawer-launcher2'),'classes%d.dex'%i:helper})
