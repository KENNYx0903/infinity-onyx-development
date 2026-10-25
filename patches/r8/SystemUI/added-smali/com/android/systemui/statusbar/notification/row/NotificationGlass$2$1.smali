.class Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;
.super Ljava/lang/Object;
.source "NotificationGlass.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 8

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->running:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$token:I

    sget v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->transitionGeneration:I

    if-eq v0, v1, :cond_f

    goto :goto_6c

    :cond_f
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v3

    long-to-float v1, v3

    const v3, 0x3c23d70a    # 0.01f

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;

    iget-wide v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->start:J

    sub-long/2addr p1, v3

    long-to-float p1, p1

    const p2, 0x49742400    # 1000000.0f

    div-float/2addr p1, p2

    div-float/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/Animator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p2

    if-eqz p2, :cond_54

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    :cond_54
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;->val$opening:Z

    if-eqz p2, :cond_5c

    move p2, p1

    goto :goto_5e

    :cond_5c
    sub-float p2, v2, p1

    :goto_5e
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->applyContent(F)V

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6c

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_6c
    :goto_6c
    return-void
.end method
