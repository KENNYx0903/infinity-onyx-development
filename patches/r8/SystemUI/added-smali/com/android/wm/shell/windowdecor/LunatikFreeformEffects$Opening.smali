.class final Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;
.super Ljava/lang/Object;
.source "LunatikFreeformEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Opening"
.end annotation


# instance fields
.field alpha:F

.field animator:Landroid/animation/ValueAnimator;

.field appReady:Z

.field captionReady:Z

.field done:Z

.field final id:I

.field state:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

.field timeout:Ljava/lang/Runnable;

.field watchedRoot:Landroid/view/View;


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->id:I

    return-void
.end method
