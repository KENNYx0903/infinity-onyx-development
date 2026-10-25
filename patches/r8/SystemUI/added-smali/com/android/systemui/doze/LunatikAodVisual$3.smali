.class Lcom/android/systemui/doze/LunatikAodVisual$3;
.super Landroid/hardware/TriggerEventListener;
.source "LunatikAodVisual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/LunatikAodVisual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 6

    .line 51
    const/4 p1, 0x0

    # setter for: Lcom/android/systemui/doze/LunatikAodVisual;->registered:Z
    invoke-static {p1}, Lcom/android/systemui/doze/LunatikAodVisual;->access$902(Z)Z

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$000()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 52
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    # setter for: Lcom/android/systemui/doze/LunatikAodVisual;->shownUntil:J
    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1002(J)J

    .line 53
    # invokes: Lcom/android/systemui/doze/LunatikAodVisual;->invalidate()V
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$800()V

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->refresh()V

    .line 54
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$400()Landroid/os/Handler;

    move-result-object p1

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->hide:Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1100()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$400()Landroid/os/Handler;

    move-result-object p1

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->hide:Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1100()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    # invokes: Lcom/android/systemui/doze/LunatikAodVisual;->arm()V
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1200()V

    .line 55
    return-void
.end method
