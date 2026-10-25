.class final Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;
.super Ljava/lang/Object;
.source "LunatikFreeformEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field closing:Z

.field dead:Z

.field final decor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field dismissProgress:F

.field final handler:Landroid/os/Handler;

.field hide:Ljava/lang/Runnable;

.field marker:Landroid/view/SurfaceControl;

.field markerAnim:Landroid/animation/ValueAnimator;

.field markerCanvasSurface:Landroid/view/Surface;

.field markerH:I

.field markerOpacity:F

.field markerW:I

.field pendingH:I

.field pendingW:I

.field resizing:Z

.field root:Landroid/view/View;

.field unlockAlpha:F

.field unlockAnimator:Landroid/animation/ValueAnimator;

.field unlockTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->unlockAlpha:F

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->decor:Ljava/lang/ref/WeakReference;

    const-string v0, "mHandler"

    invoke-static {p1, v0}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;->handler:Landroid/os/Handler;

    return-void
.end method
