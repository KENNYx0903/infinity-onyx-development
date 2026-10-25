.class Lcom/android/systemui/doze/LunatikAodVisual$10;
.super Ljava/lang/Object;
.source "LunatikAodVisual.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/LunatikAodVisual;->tick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromX:F

.field final synthetic val$fromY:F

.field final synthetic val$targetX:F

.field final synthetic val$targetY:F


# direct methods
.method constructor <init>(FFFF)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput p1, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$fromX:F

    iput p2, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$targetX:F

    iput p3, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$fromY:F

    iput p4, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$targetY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 152
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$fromX:F

    iget v1, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$targetX:F

    iget v2, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$fromX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    # setter for: Lcom/android/systemui/doze/LunatikAodVisual;->dx:F
    invoke-static {v0}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1602(F)F

    iget v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$fromY:F

    iget v1, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$targetY:F

    iget v2, p0, Lcom/android/systemui/doze/LunatikAodVisual$10;->val$fromY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    # setter for: Lcom/android/systemui/doze/LunatikAodVisual;->dy:F
    invoke-static {v0}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1702(F)F

    # invokes: Lcom/android/systemui/doze/LunatikAodVisual;->invalidate()V
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$800()V

    .line 153
    return-void
.end method
