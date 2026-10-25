.class public final synthetic Lcom/android/wm/shell/windowdecor/EdgeFreeform$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/wm/shell/windowdecor/EdgeFreeform$State;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;

    invoke-static {v0, v1, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->lambda$animate$0(ZLcom/android/wm/shell/windowdecor/EdgeFreeform$State;Landroid/animation/ValueAnimator;)V

    return-void
.end method
