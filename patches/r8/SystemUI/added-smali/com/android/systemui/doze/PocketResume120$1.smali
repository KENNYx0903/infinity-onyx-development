.class Lcom/android/systemui/doze/PocketResume120$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PocketResume120.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/PocketResume120;->startVisual()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$token:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 11
    iput p1, p0, Lcom/android/systemui/doze/PocketResume120$1;->val$token:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 11
    iget p1, p0, Lcom/android/systemui/doze/PocketResume120$1;->val$token:I

    invoke-static {p1}, Lcom/android/systemui/doze/PocketResume120;->finish(I)V

    return-void
.end method
