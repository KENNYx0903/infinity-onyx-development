.class Lcom/android/systemui/doze/LunatikAodVisual$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LunatikAodVisual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/LunatikAodVisual;->state(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 101
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$000()Z

    move-result p1

    if-eqz p1, :cond_9

    # invokes: Lcom/android/systemui/doze/LunatikAodVisual;->hiddenFrame()V
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1300()V

    :cond_9
    return-void
.end method
