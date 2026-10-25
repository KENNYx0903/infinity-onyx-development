.class Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LunatikFreeformEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->unlockFade(Ljava/lang/Object;Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/view/SurfaceControl$Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;->val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;->val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAnimator:Landroid/animation/ValueAnimator;

    if-eq v0, p1, :cond_7

    return-void

    .line 404
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;->val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAlpha:F

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;->val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;->val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iput-object v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$3;->val$s:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    # invokes: Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->renderMarkers(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V
    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->access$200(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;)V

    .line 405
    return-void
.end method
