.class public final synthetic Lcom/android/systemui/doze/PocketResume120$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/doze/PocketResume120$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget v0, p0, Lcom/android/systemui/doze/PocketResume120$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Lcom/android/systemui/doze/PocketResume120;->lambda$startVisual$1(I)V

    return-void
.end method
