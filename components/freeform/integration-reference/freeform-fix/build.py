from pathlib import Path
import re,subprocess,os,zipfile,json,hashlib,shutil
r=Path('work/freeform-fix').resolve();tree=r/'sysui';pkg=tree/'smali_classes3/com/android/wm/shell/windowdecor'
original=Path('work/sysui-shade/smali_classes3/com/android/wm/shell/windowdecor')
H='Lcom/android/wm/shell/windowdecor/LunatikFreeform;'
def method(s,name,body):
 pattern=r'(?ms)^\.method ([^\n]*'+re.escape(name)+r'\([^\n]*)\n.*?^\.end method'
 s,n=re.subn(pattern,lambda m:'.method '+m[1]+'\n'+body+'\n.end method',s);assert n==1,(name,n);return s
def inject(s,name,code):
 pattern=r'(?m)^(\.method [^\n]*'+re.escape(name)+r'\([^\n]*\n\s*\.locals \d+\n)'
 s,n=re.subn(pattern,lambda m:m[1]+code+'\n',s);assert n==1,(name,n);return s
n='FluidResizeTaskPositioner.smali';s=(original/n).read_text()
s=method(s,'applyUniformScaleResize','    .locals 0\n    invoke-static {p0, p1}, '+H+'->resize(Ljava/lang/Object;Landroid/graphics/PointF;)V\n    return-void')
s=method(s,'currentVisualBounds','    .locals 1\n    invoke-static {p0}, '+H+'->bounds(Ljava/lang/Object;)Landroid/graphics/Rect;\n    move-result-object v0\n    return-object v0')
s=inject(s,'onDragPositioningStart','    invoke-static/range {p0 .. p0}, '+H+'->start(Ljava/lang/Object;)V')
a=s.index('.method public final onDragPositioningEnd(');b=s.index('.end method',a)
part=s[a:b];assert part.count('    return-object p1')==1
part=part.replace('    return-object p1','    invoke-static {p0}, '+H+'->finish(Ljava/lang/Object;)V\n    return-object p1')
s=s[:a]+part+s[b:]
(pkg/n).write_text(s)
n='CaptionWindowDecorViewModel.smali';s=(original/n).read_text()
s=method(s,'getLogicalBounds','''    .locals 2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;
    move-result-object v0
    new-instance v1, Landroid/graphics/Rect;
    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    return-object v1''')
a=s.index('.method public final createWindowDecoration$1(');b=s.index('.end method',a)
part=s[a:b]
needle='    :goto_0\n    iget v0, v5, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$TransformState;->mScale:F'
assert part.count(needle)==1
part=part.replace(needle,'    :goto_0\n    invoke-static {v6, v1, v5}, '+H+'->initial(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V\n    iget v0, v5, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$TransformState;->mScale:F')
part=part.replace('    return-void','    invoke-static {v7, v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->opening(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V\n    return-void')
s=s[:a]+part+s[b:]
for name in ['onTaskChanging','onTaskInfoChanged']:
 s=inject(s,name,'    invoke-static/range {p0 .. p1}, '+H+'->taskChanged(Ljava/lang/Object;Ljava/lang/Object;)V')
s=inject(s,'onTaskInfoChanged','    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->focusChanged(Ljava/lang/Object;Ljava/lang/Object;)V')
s=inject(s,'-$$Nest$mexitBubble','    invoke-static {p0, p1}, '+H+'->beginRestore(Ljava/lang/Object;I)V')
s=inject(s,'-$$Nest$mfocusFreeformTask','    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->activateTask(Ljava/lang/Object;I)V')
s=inject(s,'destroyWindowDecoration','    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->destroyTask(Ljava/lang/Object;Ljava/lang/Object;)V')
s=inject(s,'-$$Nest$menterFullscreen','    invoke-static {p0, p1}, '+H+'->clearDensity(Ljava/lang/Object;I)V')
(pkg/n).write_text(s)
n='CaptionWindowDecorViewModel$3.smali';s=(original/n).read_text()
needle='    :cond_2\n    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$3;->val$endAction:Ljava/lang/Runnable;'
assert s.count(needle)==1
s=s.replace(needle,'    :cond_2\n    invoke-static {p0}, '+H+'->restored(Ljava/lang/Object;)V\n    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$3;->val$endAction:Ljava/lang/Runnable;')
(pkg/n).write_text(s)
n='CaptionWindowDecorViewModel$CaptionTouchEventListener.smali';s=(original/n).read_text()
s=inject(s,'onTouch','''    invoke-static/range {p0 .. p2}, '''+H+'''->touch(Ljava/lang/Object;Landroid/view/View;Landroid/view/MotionEvent;)Z
    move-result v0
    if-eqz v0, :lunatik_original_touch
    return v0
    :lunatik_original_touch''')
# Hide the inactive minimize action before the menu is measured.
needle='    const v2, 0x7f0b03a3'
assert s.count(needle)==1
s=s.replace(needle,'    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->menu(Landroid/view/View;)V\n'+needle)
needle='    const-string p1, "InfinityXFreeformMenu"'
assert s.count(needle)==1
s=s.replace(needle,'    invoke-static {p0, v0, v8}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->anchor(Ljava/lang/Object;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V\n'+needle)
(pkg/n).write_text(s)
n='CaptionWindowDecoration.smali';s=(original/n).read_text()
pat=r'(?ms)(^\.method public final constantChromePx\(I\)I\n).*?^\.end method'
body='''    .locals 2
    move v1, p1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-static {v0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I
    move-result p1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecoration;->constantPxFromLogical(I)I
    move-result p1
    invoke-static {p0, v1, p1}, '''+H+'''->chrome(Ljava/lang/Object;II)I
    move-result p1
    return p1
.end method'''
s,count=re.subn(pat,lambda m:m[1]+body,s);assert count==1
s=inject(s,'applyVisualTransform','    invoke-static {p0}, '+H+'->density(Ljava/lang/Object;)V\n    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->transform(Ljava/lang/Object;)V')
# Preserve the decoration reference while the original method reuses p0 as a float.
a=s.index('.method public final applyVisualTransform(');b=s.index('.end method',a)
part=s[a:b];assert '    .locals 8' in part
part=part.replace('    .locals 8','    .locals 9\n    move-object v8, p0',1)
needle='    const/4 p0, 0x0'
assert part.count(needle)==1
part=part.replace(needle,'    invoke-static {v8, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->bubble(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;)V\n'+needle)
s=s[:a]+part+s[b:]
s=inject(s,'calculateDecorTouchableRegion','''    invoke-static {p0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->bubbleRegion(Ljava/lang/Object;Ljava/lang/Object;)Landroid/graphics/Region;
    move-result-object v0
    if-eqz v0, :lunatik_normal_region
    return-object v0
    :lunatik_normal_region''')
s=inject(s,'syncBarHeights','    invoke-static {p0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->decorate(Ljava/lang/Object;Landroid/view/View;)V')
(pkg/n).write_text(s)
# Apply the explicit caption input region AFTER its window has been registered.
vp=tree/'smali_classes3/com/android/wm/shell/windowdecor/common/viewhost'
n='SurfaceControlViewHostAdapter.smali';s=(original/'common/viewhost'/n).read_text()
s=s.replace('# instance fields','# instance fields\n.field public lunatikTouchableRegion:Landroid/graphics/Region;')
s=inject(s,'prepareViewHost','''    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/common/viewhost/SurfaceControlViewHostAdapter;->lunatikTouchableRegion:Landroid/graphics/Region;''')
a=s.index('.method public final updateView(');b=s.index('.end method',a)
part=s[a:b]
part=part.replace('move-result-object p0','move-result-object v0').replace('invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControlViewHost;','invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControlViewHost;').replace('invoke-virtual {p0, p2}, Landroid/view/SurfaceControlViewHost;','invoke-virtual {v0, p2}, Landroid/view/SurfaceControlViewHost;')
part=part.replace('    return-void','    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/common/viewhost/SurfaceControlViewHostAdapter;->lunatikApplyInputRegion()V\n    return-void')
s=s[:a]+part+s[b:]
s+='''
.method public final lunatikApplyInputRegion()V
    .locals 3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/common/viewhost/SurfaceControlViewHostAdapter;->wwm:Lcom/android/wm/shell/windowdecor/common/viewhost/WindowDecorWindowlessWindowManager;
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/common/viewhost/SurfaceControlViewHostAdapter;->viewHost:Landroid/view/SurfaceControlViewHost;
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/common/viewhost/SurfaceControlViewHostAdapter;->lunatikTouchableRegion:Landroid/graphics/Region;
    if-eqz v0, :done
    if-eqz v1, :done
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/common/viewhost/WindowDecorWindowlessWindowManager;->setTouchRegion(Landroid/view/SurfaceControlViewHost;Landroid/graphics/Region;)V
    :done
    return-void
.end method
'''
(vp/n).write_text(s)
n='DragResizeInputListener.smali';s=(original/n).read_text()
s=inject(s,'updateSinkInputChannel','''    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->sinkRegion(Ljava/lang/Object;Landroid/graphics/Region;)Landroid/graphics/Region;
    move-result-object p1''')
(pkg/n).write_text(s)
# Launch transitions retain an old task crop after the initial bounds WCT.
transition=tree/'smali_classes3/com/android/wm/shell/transition/Transitions.smali'
s=(Path('work/sysui-shade/smali_classes3/com/android/wm/shell/transition/Transitions.smali')).read_text()
a=s.index('.method public final onFinish(');b=s.index('.end method',a)
part=s[a:b];needle='    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V'
assert part.count(needle)==1
part=part.replace(needle,'    invoke-static {v5}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->finishTransition(Landroid/view/SurfaceControl$Transaction;)V\n'+needle)
s=s[:a]+part+s[b:];transition.write_text(s)
# Freeform opening skips normal app animation; keep its task alpha gated until
# the synchronized app frame and caption frame are both ready.
p=tree/'smali_classes3/com/android/wm/shell/transition/DefaultTransitionHandler.smali'
s=Path('work/sysui-shade/smali_classes3/com/android/wm/shell/transition/DefaultTransitionHandler.smali').read_text()
a=s.index('.method public final startAnimation(');b=s.index('.end method',a)
part=s[a:b]
import re
part=re.sub(r'(?m)^(    invoke-virtual \{(v\d+)\}, Landroid/view/SurfaceControl\$Transaction;->apply\(\)V)$',lambda m:'    invoke-static {'+m[2]+'}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openingAlpha(Landroid/view/SurfaceControl$Transaction;)V\n'+m[1],part)
s=s[:a]+part+s[b:];p.write_text(s)
# Freeform is already a child of the animated display area during unlock.
# Avoid creating a second remote-animation target for the same visual subtree.
p=tree/'smali_classes2/com/android/systemui/keyguard/KeyguardService.smali'
s=Path('work/sysui-shade/smali_classes2/com/android/systemui/keyguard/KeyguardService.smali').read_text()
a=s.index('.method public static -$$Nest$smwrap(');b=s.index('.end method',a)
part=s[a:b];needle='    check-cast v0, Landroid/window/TransitionInfo$Change;'
assert part.count(needle)==2
part=part.replace(needle,needle+'\n    invoke-static {p0, v0, p2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->keyguardUnwrapped(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;)Z\n    move-result v2\n    if-nez v2, :goto_2',1)
s=s[:a]+part+s[b:];p.write_text(s)
p=tree/'smali_classes3/com/android/wm/shell/shared/TransitionUtil.smali'
p.write_text(Path('work/sysui-shade/smali_classes3/com/android/wm/shell/shared/TransitionUtil.smali').read_text())
jdk=Path('${ANDROID_TOOLS_ROOT}/jdk-21.0.12.1+1');sdk=Path('${ANDROID_TOOLS_ROOT}/sdk');bt=sdk/'build-tools/36.0.0';jar=sdk/'platforms/android-36/android.jar'
env=dict(os.environ,JAVA_HOME=str(jdk));env['PATH']=str(jdk/'bin')+':'+env['PATH']
def run(*args): subprocess.run([str(x) for x in args],env=env,check=True)
for d in ['classes','dex','helper-smali']:
 if (r/d).exists(): shutil.rmtree(r/d)
 (r/d).mkdir()
for p in pkg.glob('LunatikFreeform*.smali'):p.unlink()
run(jdk/'bin/javac','--release','8','-cp',jar,'-d',r/'classes',r/'LunatikFreeform.java',r/'LunatikFreeformEffects.java')
run(jdk/'bin/jar','cf',r/'helper.jar','-C',r/'classes','.')
run(bt/'d8','--min-api','29','--lib',jar,'--output',r/'dex',r/'helper.jar')
cp=':'.join(str(p) for p in (sdk/'cmdline-tools/latest/lib').rglob('*.jar'))
run(jdk/'bin/java','-cp',cp,'com.android.tools.smali.baksmali.Main','d',r/'dex/classes.dex','-o',r/'helper-smali')
import shutil
for p in (r/'helper-smali').rglob('*.smali'):
 out=tree/'smali_classes3'/p.relative_to(r/'helper-smali');out.parent.mkdir(exist_ok=True,parents=True);shutil.copyfile(p,out)
run(jdk/'bin/java','-jar','${APKTOOL_JAR}','b',tree,'-o',r/'rebuilt.apk')
base=Path('work/rom-build/SystemUI.apk')
# Keep all previously integrated fixes and every non-code original ZIP entry byte-identical.
with zipfile.ZipFile(base) as z,zipfile.ZipFile(r/'rebuilt.apk') as code,zipfile.ZipFile(r/'unsigned.apk','w') as out:
 for info in z.infolist():
  if info.filename.startswith('META-INF/') and info.filename.upper().endswith(('.SF','.RSA','.DSA','.EC','.MF')):continue
  out.writestr(info,code.read(info.filename) if info.filename in ('classes2.dex','classes3.dex') else z.read(info.filename))
run(bt/'zipalign','-f','4',r/'unsigned.apk',r/'aligned.apk')
run(bt/'apksigner','sign','--key','work/rom-build/tools/platform.pk8','--cert','work/rom-build/tools/platform.x509.pem','--out',r/'SystemUI.freeform.apk',r/'aligned.apk')
run(bt/'apksigner','verify','--verbose',r/'SystemUI.freeform.apk')
with zipfile.ZipFile(base) as old,zipfile.ZipFile(r/'SystemUI.freeform.apk') as new:
 changed=[n for n in old.namelist() if not n.startswith('META-INF/') and old.read(n)!=new.read(n)]
 assert set(changed)=={'classes2.dex','classes3.dex'},changed
(r/'build-verification.json').write_text(json.dumps({'changed_entries':changed,'sha256':hashlib.sha256((r/'SystemUI.freeform.apk').read_bytes()).hexdigest()},indent=2))
