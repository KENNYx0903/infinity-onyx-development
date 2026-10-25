.class public final synthetic Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/animation/ValueAnimator;Ljava/lang/Object;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;->f$1:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;->f$1:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->lambda$unlockFade$11(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/animation/ValueAnimator;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V

    return-void
.end method
