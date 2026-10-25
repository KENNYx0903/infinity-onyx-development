.class final Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;
.super Ljava/lang/Object;
.source "EdgeFreeform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/EdgeFreeform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation


# instance fields
.field adapter:Ljava/lang/Object;

.field base:Landroid/graphics/Region;

.field bottom:Landroid/graphics/Rect;

.field bottomAlpha:F

.field bottomAnim:Landroid/animation/ValueAnimator;

.field bottomShown:Z

.field d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field dragging:Z

.field h:I

.field root:Landroid/view/View;

.field side:Landroid/graphics/Rect;

.field sideAlpha:F

.field sideAnim:Landroid/animation/ValueAnimator;

.field sideShown:Z

.field w:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->side:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottom:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->d:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->root:Landroid/view/View;

    return-void
.end method
