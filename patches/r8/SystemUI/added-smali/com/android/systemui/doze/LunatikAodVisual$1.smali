.class Lcom/android/systemui/doze/LunatikAodVisual$1;
.super Ljava/lang/Object;
.source "LunatikAodVisual.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 25
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$000()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 26
    :cond_7
    nop

    .line 27
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_a
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->context:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$100()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_22

    :cond_12
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->context:Landroid/content/Context;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$100()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    :goto_22
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_43

    invoke-virtual {v2}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_45

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_43

    move v2, v0

    goto :goto_47

    :cond_43
    move v2, v1

    goto :goto_47

    :catch_45
    move-exception v2

    move v2, v1

    .line 28
    :goto_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 29
    const-wide/16 v5, 0x0

    if-nez v2, :cond_53

    # setter for: Lcom/android/systemui/doze/LunatikAodVisual;->panelReadySince:J
    invoke-static {v5, v6}, Lcom/android/systemui/doze/LunatikAodVisual;->access$202(J)J

    goto :goto_5e

    .line 30
    :cond_53
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->panelReadySince:J
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$200()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-nez v5, :cond_5e

    # setter for: Lcom/android/systemui/doze/LunatikAodVisual;->panelReadySince:J
    invoke-static {v3, v4}, Lcom/android/systemui/doze/LunatikAodVisual;->access$202(J)J

    .line 31
    :cond_5e
    :goto_5e
    if-eqz v2, :cond_6e

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->panelReadySince:J
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$200()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x50

    cmp-long v5, v5, v7

    if-ltz v5, :cond_6e

    move v5, v0

    goto :goto_6f

    :cond_6e
    move v5, v1

    .line 32
    :goto_6f
    if-nez v5, :cond_86

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->handoffStart:J
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$300()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4b0

    cmp-long v3, v3, v5

    if-gez v3, :cond_86

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$400()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 33
    :cond_86
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->notificationWindow()V

    .line 34
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_a0

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_a0

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$500()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 35
    :cond_a0
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$700()F

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    # setter for: Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/systemui/doze/LunatikAodVisual;->access$602(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$600()Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x140

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$600()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$600()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/LunatikAodVisual$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/LunatikAodVisual$1$1;-><init>(Lcom/android/systemui/doze/LunatikAodVisual$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 38
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$600()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handoff reveal panelReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LunatikAodVisual"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method
