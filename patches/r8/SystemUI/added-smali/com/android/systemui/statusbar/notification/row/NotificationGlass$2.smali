.class Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationGlass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->animate(Ljava/lang/Object;Landroid/animation/Animator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final frame:Landroid/view/Choreographer$FrameCallback;

.field running:Z

.field start:J

.field final synthetic val$animator:Landroid/animation/Animator;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$opening:Z

.field final synthetic val$token:I


# direct methods
.method constructor <init>(ILandroid/animation/Animator;ZLjava/lang/Object;)V
    .registers 5

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$token:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$animator:Landroid/animation/Animator;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$opening:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->frame:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 15
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 15
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->running:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->frame:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->cancelled:Z

    if-nez p1, :cond_33

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$token:I

    sget v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->transitionGeneration:I

    if-eq p1, v0, :cond_17

    goto :goto_33

    :cond_17
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$opening:Z

    if-eqz p1, :cond_1e

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->applyContent(F)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$opening:Z

    if-nez p1, :cond_33

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->unguard()V

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentAlpha:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->gutsOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_33
    :goto_33
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    .line 15
    const-string v0, "NotificationGlass"

    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$object:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->prepareContents(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$object:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->draw(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$object:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->prime(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$opening:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_19

    :cond_17
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_19
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->applyContent(F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->start:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->running:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->frame:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content follows native guts animator opening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$opening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    move-exception p1

    const-string v1, "Guts animation"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5b
    return-void
.end method
