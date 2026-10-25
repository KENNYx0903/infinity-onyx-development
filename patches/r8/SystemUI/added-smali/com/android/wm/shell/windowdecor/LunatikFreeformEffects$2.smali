.class Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LunatikFreeformEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->finishDismiss(Ljava/lang/Object;Ljava/lang/Object;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$d:Ljava/lang/Object;

.field final synthetic val$model:Ljava/lang/Object;

.field final synthetic val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    .registers 4

    .line 326
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;->val$d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;->val$model:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;->val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    .line 328
    const-string p1, "LunatikFreeformFX"

    :try_start_2
    invoke-static {}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->tx()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "removeTask"

    const-string v2, "android.window.WindowContainerToken"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;->val$d:Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "token"

    invoke-static {v3, v4}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;->val$model:Ljava/lang/Object;

    const-string v2, "mTaskOrganizer"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "applyTransaction"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nav swipe closed task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;->val$d:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "taskId"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_61

    .line 331
    goto :goto_72

    :catch_61
    move-exception v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;->val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->closing:Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$2;->val$d:Ljava/lang/Object;

    const/4 v2, 0x0

    # invokes: Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->dismissFrame(Ljava/lang/Object;F)V
    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->access$100(Ljava/lang/Object;F)V

    const-string v1, "close"

    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    :goto_72
    return-void
.end method
