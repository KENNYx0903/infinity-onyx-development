from pathlib import Path
import shutil
base=Path('work/gamespace-redesign/decoded/smali_classes2/com/ireddragonicy/gamespace/thermal');p=base/'ThermalController.smali'; backup=Path('work/preset-resume-audit/ThermalController.original.smali')
if not backup.exists():shutil.copy2(p,backup)
s=backup.read_text()
needle='.method private final registerForegroundObserver()V\n    .locals 3'
s=s.replace(needle,needle+'''\n\n    invoke-static {p0}, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;->register(Lcom/ireddragonicy/gamespace/thermal/ThermalController;)V''')
a=s.index('    .line 644',s.index('.method private final onSettingChanged('));b=s.index('    .line 650',a)
s=s[:a]+'''    # Resolve the actual top task before applying changed per-app choices.
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->lunatikReconcileProfile()V
    return-void

'''+s[b:]
s+='''
.method public final lunatikReconcileProfile()V
    .locals 2
    const/4 v0, -0x1
    invoke-direct {p0, v0}, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->onForegroundChanged(I)V
    iget-boolean v0, p0, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->batterySaverActive:Z
    if-nez v0, :done
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->appProfiles:Ljava/util/HashMap;
    iget-object v1, p0, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->foregroundPackage:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/Integer;
    if-eqz v0, :global
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    invoke-direct {p0, v0}, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->applyProfileIndex(I)V
    return-void
    :global
    invoke-direct {p0}, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->applyGlobalProfile()V
    :done
    return-void
.end method
'''
p.write_text(s)
(base/'LunatikProfileTasks.smali').write_text('''.class public final Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;
.super Landroid/app/TaskStackListener;
.implements Ljava/lang/Runnable;
.field private final controller:Lcom/ireddragonicy/gamespace/thermal/ThermalController;
.field private final handler:Landroid/os/Handler;
.method public constructor <init>(Lcom/ireddragonicy/gamespace/thermal/ThermalController;)V
    .locals 1
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V
    iput-object p1, p0, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;->controller:Lcom/ireddragonicy/gamespace/thermal/ThermalController;
    invoke-static {p1}, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->access$getHandler$p(Lcom/ireddragonicy/gamespace/thermal/ThermalController;)Landroid/os/Handler;
    move-result-object v0
    iput-object v0, p0, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;->handler:Landroid/os/Handler;
    return-void
.end method
.method public static register(Lcom/ireddragonicy/gamespace/thermal/ThermalController;)V
    .locals 3
    :try_start
    new-instance v0, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;
    invoke-direct {v0, p0}, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;-><init>(Lcom/ireddragonicy/gamespace/thermal/ThermalController;)V
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;
    move-result-object v1
    invoke-interface {v1, v0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;->onTaskStackChanged()V
    const-string v0, "GameSpaceThermal"
    const-string v1, "Task observer registered for profile reconciliation"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :error
    return-void
    :error
    move-exception v0
    const-string v1, "GameSpaceThermal"
    const-string v2, "Task observer registration failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
.method public onTaskStackChanged()V
    .locals 3
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;->handler:Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    const-wide/16 v1, 0x78
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method
.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;->onTaskStackChanged()V
    return-void
.end method
.method public onTaskFocusChanged(IZ)V
    .locals 0
    if-eqz p2, :done
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;->onTaskStackChanged()V
    :done
    return-void
.end method
.method public run()V
    .locals 3
    :try_start
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/thermal/LunatikProfileTasks;->controller:Lcom/ireddragonicy/gamespace/thermal/ThermalController;
    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/thermal/ThermalController;->lunatikReconcileProfile()V
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :error
    return-void
    :error
    move-exception v0
    const-string v1, "GameSpaceThermal"
    const-string v2, "Profile reconciliation failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method
''')
