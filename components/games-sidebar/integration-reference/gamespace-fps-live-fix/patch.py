from pathlib import Path
import re,shutil,json
B=Path('work/ru-full-apps/code/com.ireddragonicy.gamespace/classes2/com/ireddragonicy/gamespace');D=Path('work/gamespace-fps-live-fix');C=[]
def save(p,s):
 q=D/'backup'/p.relative_to(B);q.parent.mkdir(parents=True,exist_ok=True)
 if not q.exists():shutil.copy2(p,q)
 p.write_text(s);C.append(str(p.relative_to(B)))
def transform(s,name,fn):
 pat=r'(?ms)^\.method [^\n]* '+re.escape(name)+r'\([^\n]*\n.*?^\.end method'
 s,n=re.subn(pat,lambda m:fn(m[0]),s);assert n==1,(name,n);return s
p=B/'gamebar/tiles/TileRegistry.smali';s=p.read_text();s=s.replace('# instance fields','# instance fields\n.field private fpsEnabledState:Landroidx/compose/runtime/MutableState;',1)
i=s.index('->getShowFps()Z');j=s.index('    move-result-object v5',i)+len('    move-result-object v5');s=s[:j]+'\n\n    iput-object v5, p0, Lcom/ireddragonicy/gamespace/gamebar/tiles/TileRegistry;->fpsEnabledState:Landroidx/compose/runtime/MutableState;'+s[j:]
def setter(m):
 needle='    .line 119';i=m.index(needle)
 return m[:i]+'''    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/tiles/TileRegistry;->fpsEnabledState:Landroidx/compose/runtime/MutableState;
    if-eqz v0, :fps_state_done
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V
    :fps_state_done

'''+m[i:]
s=transform(s,'buildDefaultTiles$lambda$36$lambda$19',lambda m:setter(m.replace('.registers 3','.registers 4')));save(p,s)
p=B/'gamebar/GameSidebar.smali';s=p.read_text();s=s.replace('# instance fields','# instance fields\n.field private fpsSessionActive:Z',1)
# Reconcile subscribers: open main panel OR enabled floating counter, within an active game session.
s+='''
.method public final syncFpsTracking()V
    .registers 3
    iget-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->fpsSessionActive:Z
    if-eqz v0, :stop
    iget-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->panelShowing:Z
    if-nez v0, :start
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->appSettings:Lcom/ireddragonicy/gamespace/data/AppSettings;
    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/data/AppSettings;->getShowFps()Z
    move-result v0
    if-eqz v0, :stop
    :start
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->fpsInteractor:Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;
    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->start()V
    return-void
    :stop
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->fpsInteractor:Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;
    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->dispose()V
    return-void
.end method
'''
for name in ['forceRemovePanel','removePanelAndRestoreCircle']:
 s=transform(s,name,lambda m:re.sub(r'    invoke-virtual \{v1\}, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->dispose\(\)V','    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->syncFpsTracking()V',m))
def show(m):
 m=m.replace('    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->start()V','    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->syncFpsTracking()V')
 m=m.replace('    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->dispose()V','')
 # After failed attach panel is no longer a consumer.
 needle='    iput-boolean v2, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->panelShowing:Z'
 return m.replace(needle,needle+'\n    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->syncFpsTracking()V')
s=transform(s,'showPanel',show)
def session(m,arg):
 reg=re.search(r'\.registers (\d+)',m);m=m.replace(reg[0],'.registers '+str(int(reg[1])+1),1)
 i=m.index('\n',m.index('.registers'))+1
 code=f'''    const/4 v0, 0x1
    if-eq {arg}, v0, :fps_is_game
    const/4 v0, 0x0
    :fps_is_game
    iput-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->fpsSessionActive:Z
'''
 m=m[:i]+code+m[i:]
 # Return path reconciliation also catches session type changes and resuming.
 return m.replace('    return-void','    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->syncFpsTracking()V\n    return-void')
s=transform(s,'onSessionStart',lambda m:session(m,'p2'));s=transform(s,'onSessionModeChanged',lambda m:session(m,'p1'))
s=transform(s,'onSessionEnd',lambda m:m.replace('.registers 3','.registers 3\n    const/4 v0, 0x0\n    iput-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->fpsSessionActive:Z',1));save(p,s)
# The main-thread toggle updates the overlay and reconciles tracking together.
p=B/'gamebar/GameSidebar$onCreate$3$1.smali';s=p.read_text();a=s.index('    .line 159');z=s.index('.end method',a);s=s[:a]+'''    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar$onCreate$3$1;->this$0:Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;
    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/gamebar/GameSidebar;->syncFpsTracking()V
    return-void
'''+s[z:];save(p,s)
# WindowManager caches callback registrations: do not double-register; rebind when task changes.
p=B/'gamebar/fps/FpsInteractor.smali';s=p.read_text();s=s.replace('# instance fields','# instance fields\n.field private fpsRegistered:Z\n.field private fpsTaskId:I',1)
s=transform(s,'dispose',lambda m:m[:m.index('\n')]+'''
    .registers 3
    iget-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->fpsRegistered:Z
    if-eqz v0, :done
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->fpsCallback:Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor$fpsCallback$1;
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->fpsRegistered:Z
    :done
    return-void
.end method''')
s=transform(s,'start',lambda m:m[:m.index('\n')]+'''
    .registers 6
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->taskManager:Landroid/app/IActivityTaskManager;
    if-eqz v0, :done
    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    move-result-object v0
    if-eqz v0, :done
    iget v0, v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I
    iget-boolean v1, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->fpsRegistered:Z
    if-eqz v1, :register
    iget v1, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->fpsTaskId:I
    if-eq v0, v1, :done
    :register
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->dispose()V
    iget-object v1, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->wm:Landroid/view/WindowManager;
    sget-object v2, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor$start$1;->INSTANCE:Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor$start$1;
    iget-object v3, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->fpsCallback:Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor$fpsCallback$1;
    invoke-interface {v1, v0, v2, v3}, Landroid/view/WindowManager;->registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    iput v0, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->fpsTaskId:I
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/fps/FpsInteractor;->fpsRegistered:Z
    :done
    return-void
.end method''');save(p,s)
(D/'changes.json').write_text(json.dumps(C,indent=2));print('Patched',len(C),'files')
