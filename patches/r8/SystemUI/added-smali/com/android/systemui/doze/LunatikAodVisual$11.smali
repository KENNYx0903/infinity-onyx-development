.class Lcom/android/systemui/doze/LunatikAodVisual$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LunatikAodVisual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/LunatikAodVisual;->tick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 154
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_17

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_17

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1800()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_17
    return-void
.end method
