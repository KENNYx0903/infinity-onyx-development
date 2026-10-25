from pathlib import Path
import subprocess,zipfile,os,hashlib,json
r=Path('work/aod-vendor-sensor-v47');base=Path('work/aod-unlock-v40/SystemUI.unlock-v40.apk');tree=r/'smali'
def run(*a):subprocess.run(list(map(str,a)),check=True,env=env)
jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');bt=sdk/'build-tools/36.0.0';env=dict(os.environ,JAVA_HOME=str(jdk));env['PATH']=str(jdk/'bin')+':'+env['PATH']
if not tree.exists():run('cp','-al','work/aod-unlock-v40/smali',tree)
p=tree/'com/android/systemui/doze/DozeSensors.smali';s=(Path('work/aod-unlock-v40/smali')/'com/android/systemui/doze/DozeSensors.smali').read_text();anchor='.method public final setProxListening(Z)V\n    .registers 3\n';assert s.count(anchor)==1
new=s.replace(anchor,anchor+'\n    # Use the device NonUi sensor for continuous AOD proximity.\n    # On-demand ProximityCheck and telephony consumers are untouched.\n    invoke-static {p0, p1}, Lcom/android/systemui/doze/LunatikAodPocket;->setListening(Ljava/lang/Object;Z)Z\n    move-result v0\n    if-eqz v0, :lunatik_stock_prox\n    const/4 p1, 0x0\n    :lunatik_stock_prox\n',1)
p.unlink();p.write_text(new)
cp=':'.join(map(str,(sdk/'cmdline-tools/latest/lib').rglob('*.jar')))
classes=r/'classes';classes.mkdir(exist_ok=True);dex=r/'helper-dex';dex.mkdir(exist_ok=True)
android=sdk/'platforms/android-36/android.jar'
run(jdk/'bin/javac','--release','8','-cp',android,'-d',classes,*sorted((r/'src').glob('*.java')))
run(bt/'d8','--min-api','35','--lib',android,'--output',dex,*sorted((classes/'com/android/systemui/doze').glob('*.class')))
run(jdk/'bin/java','-cp',cp,'com.android.tools.smali.baksmali.Main','d',dex/'classes.dex','-o',r/'helper-smali')
import shutil
for f in (r/'helper-smali/com/android/systemui/doze').glob('*.smali'):
 if not (f.name.startswith('LunatikAodPocket') or f.name.startswith('LunatikAodVisual')):continue
 target=tree/'com/android/systemui/doze'/f.name
 if target.exists():target.unlink()
 shutil.copy2(f,target)
d=r/'dex-build';d.mkdir(exist_ok=True)
with zipfile.ZipFile(base) as z:
 for n in ['AndroidManifest.xml','resources.arsc']:(d/n).write_bytes(z.read(n))
(d/'apktool.yml').write_text('version: 3.0.3\napkFileName: SystemUI.apk\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n- arsc\n')
if not (d/'smali').exists():(d/'smali').symlink_to(tree.resolve(),target_is_directory=True)
run(jdk/'bin/java','-Xmx2g','-jar','${APKTOOL_JAR}','b',d,'-o',r/'dex-built.apk')
with zipfile.ZipFile(r/'dex-built.apk') as z:(r/'classes.dex').write_bytes(z.read('classes.dex'))
with zipfile.ZipFile(base) as a,zipfile.ZipFile(r/'unsigned.apk','w') as b:
 for i in a.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.DSA','.EC','.MF')):continue
  b.writestr(i,(r/'classes.dex').read_bytes() if i.filename=='classes.dex' else a.read(i.filename))
run(bt/'zipalign','-f','4',r/'unsigned.apk',r/'aligned.apk')
run(bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',r/'SystemUI.vendor-sensor-v47.apk',r/'aligned.apk')
run(bt/'apksigner','verify',r/'SystemUI.vendor-sensor-v47.apk')
with zipfile.ZipFile(base) as a,zipfile.ZipFile(r/'SystemUI.vendor-sensor-v47.apk') as b:
 changed=[n for n in a.namelist() if not n.startswith('META-INF/') and a.read(n)!=b.read(n)]
 assert changed==['classes.dex'],changed
(r/'verification.json').write_text(json.dumps(dict(changed=changed,sha256=hashlib.sha256((r/'SystemUI.vendor-sensor-v47.apk').read_bytes()).hexdigest(),diagnostic_only=True,staged=False),indent=2))
