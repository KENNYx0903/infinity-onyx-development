from pathlib import Path
import subprocess,os,re,zipfile,hashlib,json
r=Path('work/freeform-fix').resolve(); tree=r/'launcher-res';p=tree/'smali_classes2/com/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut.smali'
backup=p.with_suffix('.original.txt')
if not backup.exists():backup.write_text(p.read_text())
s=backup.read_text();a=s.index('.method private makeLaunchOptions(');b=s.index('.end method',a)+len('.end method')
head=s[a:s.index('\n',a)]
body='''
    .locals 6
    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v1
    const v2, 0x7f01002e
    const v3, 0x7f01002f
    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    move-result-object p0
    const/4 v1, 0x5
    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V
    const/4 v1, 0x1
    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions;->setDisableStartingWindow(Z)V
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v1
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F
    const/high16 v2, 0x43700000
    mul-float/2addr v2, v1
    const v3, 0x3f333333
    div-float/2addr v2, v3
    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    move-result v2
    const/high16 v4, 0x43820000
    mul-float/2addr v4, v1
    div-float/2addr v4, v3
    invoke-static {v4}, Ljava/lang/Math;->round(F)I
    move-result v4
    new-instance v1, Landroid/graphics/Rect;
    const/4 v3, 0x0
    invoke-direct {v1, v3, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I
    move-result v0
    add-int/lit8 v0, v0, 0x32
    const/16 v2, 0x32
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V
    invoke-virtual {p0, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    return-object p0
.end method'''
s=s[:a]+head+body+s[b:]
a=s.index('    const/4 v0, 0x2',s.index('.method private startActivity()'))
b=s.index('    .line 271',a)
s=s[:a]+'''    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    move-object v3, p0

'''+s[b:]
p.write_text(s)
jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');bt=sdk/'build-tools/36.0.0'
env=dict(os.environ,JAVA_HOME=str(jdk));env['PATH']=str(jdk/'bin')+':'+env['PATH']
def run(*args):subprocess.run([str(x) for x in args],env=env,check=True)
run(jdk/'bin/java','-jar','${APKTOOL_JAR}','b',tree,'-o',r/'Launcher.rebuilt.apk')
base=r/'Launcher3QuickStep.apk'
run('python3',r/'add-animation-resources.py')
with zipfile.ZipFile(base) as z,zipfile.ZipFile(r/'Launcher.rebuilt.apk') as code,zipfile.ZipFile(r/'Launcher.unsigned.apk','w') as out:
 for info in z.infolist():
  if info.filename.startswith('META-INF/') and info.filename.upper().endswith(('.SF','.RSA','.DSA','.EC','.MF')):continue
  out.writestr(info,(r/'Launcher.animations.arsc').read_bytes() if info.filename=='resources.arsc' else code.read(info.filename) if info.filename=='classes2.dex' else z.read(info.filename))
 for name in ['res/anim/lunatik_freeform_enter.xml','res/anim/lunatik_freeform_keep.xml']:
  out.writestr(name,code.read(name))
run(bt/'zipalign','-f','4',r/'Launcher.unsigned.apk',r/'Launcher.aligned.apk')
run(bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',r/'Launcher.freeform.apk',r/'Launcher.aligned.apk')
run(bt/'apksigner','verify','--verbose',r/'Launcher.freeform.apk')
with zipfile.ZipFile(base) as old,zipfile.ZipFile(r/'Launcher.freeform.apk') as new:
 changed=[n for n in old.namelist() if not n.startswith('META-INF/') and old.read(n)!=new.read(n)]
 assert set(changed)=={'classes2.dex','resources.arsc'},changed
(r/'launcher-verification.json').write_text(json.dumps({'changed_entries':changed,'sha256':hashlib.sha256((r/'Launcher.freeform.apk').read_bytes()).hexdigest()},indent=2))
