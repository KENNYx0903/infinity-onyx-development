from pathlib import Path
import subprocess,zipfile,hashlib,json
r=Path('work/freeform-fix');p=r/'services/smali_classes2/com/android/server/wm/DisplayPolicy.smali';s=(r/'DisplayPolicy.before-immersive.smali.txt').read_text()
a=s.index('.method public final updateSystemBarAttributes(');b=s.index('.end method',a);part=s[a:b]
needle='    :goto_a\n    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;';assert part.count(needle)==1
part=part.replace(needle,'''    :goto_a
    # Floating phone windows must not force bars on the fullscreen app below.
    # Split screen and tablet desktop policy retain their normal forced bars.
    if-nez v7, :lunatik_keep_bar_policy
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v9
    iget v9, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I
    const/16 v10, 0x258
    if-ge v9, v10, :lunatik_keep_bar_policy
    const/4 v1, 0x0
    :lunatik_keep_bar_policy
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;''')
p.write_text(s[:a]+part+s[b:])
subprocess.run(['${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1/bin/java','-jar','${APKTOOL_JAR}','b',str(r/'services'),'-o',str(r/'services.rebuilt-v4.jar')],check=True)
with zipfile.ZipFile(r/'services.jar') as old,zipfile.ZipFile(r/'services.rebuilt-v4.jar') as code,zipfile.ZipFile(r/'services.v4.jar','w') as out:
 for info in old.infolist():out.writestr(info,code.read(info.filename) if info.filename=='classes2.dex' else old.read(info.filename))
with zipfile.ZipFile(r/'services.jar') as old,zipfile.ZipFile(r/'services.v4.jar') as new:
 changed=[n for n in old.namelist() if old.read(n)!=new.read(n)];assert changed==['classes2.dex'],changed
(r/'services-v4-verification.json').write_text(json.dumps({'sha256':hashlib.sha256((r/'services.v4.jar').read_bytes()).hexdigest(),'changed_entries':changed},indent=2))
