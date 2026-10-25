from pathlib import Path
import subprocess,shutil,zipfile,hashlib,json
D=Path(__file__).resolve().parent;B=Path('work/ru-full-apps/code/com.ireddragonicy.gamespace').resolve()
jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');bt=sdk/'build-tools/36.0.0';android=sdk/'platforms/android-36/android.jar'
def run(*args):
 r=subprocess.run(list(map(str,args)),capture_output=True,text=True)
 if r.returncode:raise RuntimeError(r.stdout+r.stderr)
 return r.stdout
if not (D/'baseline.apk').exists():run('adb','pull','/system_ext/priv-app/GameSpace/GameSpace.apk',D/'baseline.apk')
for name in ['classes','classes2']:
 if not (D/name).exists():shutil.copytree(B/name,D/name)
for rel in ['classes2/com/ireddragonicy/gamespace/gamebar/GameSidebar.smali','classes2/com/ireddragonicy/gamespace/gamebar/VideoToolboxCardKt.smali']:shutil.copy2(D/'original-source'/rel,D/rel)
p=D/'classes2/com/ireddragonicy/gamespace/gamebar/GameSidebar.smali';s=p.read_text()
for old,new in [('onSessionStart(Ljava/lang/String;I)','sidebarOriginalStart(Ljava/lang/String;I)'),('onSessionEnd()','sidebarOriginalEnd()'),('onSessionModeChanged(I)','sidebarOriginalModeChanged(I)')]:s=s.replace('.method public final '+old,'.method public final '+new)
if 'SidebarPolicy;->start' not in s:s+='''
.method public final onSessionStart(Ljava/lang/String;I)V
 .registers 3
 invoke-static {p0,p1,p2}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->start(Ljava/lang/Object;Ljava/lang/String;I)V
 return-void
.end method
.method public final onSessionEnd()V
 .registers 1
 invoke-static {p0}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->end(Ljava/lang/Object;)V
 return-void
.end method
.method public final onSessionModeChanged(I)V
 .registers 2
 invoke-static {p0,p1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->changeMode(Ljava/lang/Object;I)V
 return-void
.end method
'''
p.write_text(s)
p=D/'classes/com/ireddragonicy/gamespace/data/SystemSettings.smali';s=p.read_text();needle='.method public final setUserGames(Ljava/util/List;)V\n    .registers 13\n';replacement=needle+'\n    iget-object v0, p0, Lcom/ireddragonicy/gamespace/data/SystemSettings;->resolver:Landroid/content/ContentResolver;\n    invoke-static {v0,p1}, Lcom/ireddragonicy/gamespace/gamebar/SidebarPolicy;->gamesChanged(Landroid/content/ContentResolver;Ljava/util/List;)V\n'
if 'SidebarPolicy;->gamesChanged' not in s:s=s.replace(needle,replacement)
p.write_text(s)
# Opaque neutral surface for the video toolbox only, retaining its rounded shape.
p=D/'classes2/com/ireddragonicy/gamespace/gamebar/VideoToolboxCardKt.smali';s=p.read_text();idx=s.index('.method public static final VideoToolboxCard-uFdPcIQ');a=s[:idx];s=s[idx:];needle='    move-result-wide v14\n\n    move-object/from16 v23, v5'
assert needle in s
if 'const v14, -0xe3e3e2' not in s:s=s.replace(needle,'    move-result-wide v14\n\n    const v14, -0xe3e3e2\n    invoke-static {v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J\n    move-result-wide v14\n\n    move-object/from16 v23, v5',1)
p.write_text(a+s)
(D/'java').mkdir(exist_ok=True);(D/'dex').mkdir(exist_ok=True)
run(jdk/'bin/javac','--release','8','-cp',android,'-d',D/'java',D/'SidebarPolicy.java')
run(bt/'d8','--min-api','35','--lib',android,'--output',D/'dex',*list((D/'java').rglob('*.class')))
cp=':'.join(map(str,(sdk/'cmdline-tools/latest/lib').rglob('*.jar')))
run(jdk/'bin/java','-cp',cp,'com.android.tools.smali.baksmali.Main','d',D/'dex/classes.dex','-o',D/'helper-smali')
shutil.copytree(D/'helper-smali',D/'classes2',dirs_exist_ok=True)
dexes={}
for name in ['classes','classes2']:
 build=D/('build-'+name);build.mkdir(exist_ok=True);(build/'apktool.yml').write_text('version: 3.0.3\napkFileName: classes.jar\nsdkInfo:\n  minSdkVersion: 36\ndoNotCompress:\n- dex\n')
 if not (build/'smali').exists():(build/'smali').symlink_to(D/name,target_is_directory=True)
 run(jdk/'bin/java','-Xmx2g','-jar','${APKTOOL_JAR}','b',build,'-o',build/'rebuilt.jar')
 with zipfile.ZipFile(build/'rebuilt.jar') as z:dexes[name+'.dex']=z.read('classes.dex')
with zipfile.ZipFile(D/'baseline.apk') as z,zipfile.ZipFile(D/'unsigned.apk','w') as out:
 for i in z.infolist():
  if i.filename.startswith('META-INF/') and i.filename.upper().endswith(('.SF','.RSA','.MF','.DSA','.EC')):continue
  out.writestr(i,dexes.get(i.filename,z.read(i.filename)))
run(bt/'zipalign','-f','4',D/'unsigned.apk',D/'aligned.apk');run(bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',D/'GameSpace.apk',D/'aligned.apk');run(bt/'apksigner','verify',D/'GameSpace.apk');print(hashlib.sha256((D/'GameSpace.apk').read_bytes()).hexdigest())
