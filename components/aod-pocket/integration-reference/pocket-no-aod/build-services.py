import sys,shutil,zipfile,hashlib,json
from pathlib import Path
sys.path.insert(0,'work/blur-settings');from common import *
D=Path('work/pocket-no-aod').resolve();base=D/'services.base.jar'
if not base.exists():shutil.copy2('work/rom-build-next/files/system/framework/services.jar',base)
tree=P/'pocket-oem-services'
if not tree.exists():disasm(base,'classes.dex','pocket-oem-services')
f=tree/'com/android/server/pocket/PocketService.smali';s=f.read_text();needle='    iput-object v0, p0, Lcom/android/server/pocket/PocketService;->mVendorSensor:Landroid/hardware/Sensor;'
if 'PocketSensorCompat;->select' not in s:
 assert s.count(needle)==1;s=s.replace(needle,'    invoke-static {p0, v0}, Lcom/android/server/pocket/PocketSensorCompat;->select(Ljava/lang/Object;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;\n    move-result-object v0\n\n'+needle+'\n\n    invoke-static {p0}, Lcom/android/server/pocket/PocketSensorCompat;->pocketValue(Ljava/lang/Object;)F\n    move-result v4\n    iput v4, p0, Lcom/android/server/pocket/PocketService;->mVendorPocketSensorValue:F')
start=s.index('.method public final update$2()V');pos=s.index('\n',s.index('.registers',start))+1;hook='\n    invoke-static {p0}, Lcom/android/server/pocket/PocketSensorCompat;->retainOnWake(Ljava/lang/Object;)Z\n    move-result v0\n    if-eqz v0, :pocket_native_update\n    return-void\n    :pocket_native_update\n'
if 'PocketSensorCompat;->retainOnWake' not in s[start:s.index('.end method',start)]:s=s[:pos]+hook+s[pos:]
f.write_text(s)
shutil.rmtree(P/'pocket-oem-helper',ignore_errors=True);helper=java(list((D/'src').rglob('*.java')),'pocket-oem-helper');(D/'helper.dex').write_bytes(helper);shutil.rmtree(D/'helper-smali',ignore_errors=True);run(J/'bin/java','-cp',CP,'com.android.tools.smali.baksmali.Main','d',D/'helper.dex','-o',D/'helper-smali');shutil.copytree(D/'helper-smali',tree,dirs_exist_ok=True)
dex=assemble(tree,'pocket-oem-services')
with zipfile.ZipFile(base) as z,zipfile.ZipFile(D/'services.pocket-oem.jar','w') as out:
 for i in z.infolist():out.writestr(i,dex if i.filename=='classes.dex' else z.read(i.filename))
with zipfile.ZipFile(base) as z,zipfile.ZipFile(D/'services.pocket-oem.jar') as out:changes=[n for n in z.namelist() if z.read(n)!=out.read(n)];assert changes==['classes.dex'],changes
(D/'build-verification.json').write_text(json.dumps({'base_sha256':hashlib.sha256(base.read_bytes()).hexdigest(),'sha256':hashlib.sha256((D/'services.pocket-oem.jar').read_bytes()).hexdigest(),'changed_entries':changes},indent=2)+'\n')
