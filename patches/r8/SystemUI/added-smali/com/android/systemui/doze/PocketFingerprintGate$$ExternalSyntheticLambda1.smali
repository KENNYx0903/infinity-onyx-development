.class public final synthetic Lcom/android/systemui/doze/PocketFingerprintGate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/doze/PocketFingerprintGate$$ExternalSyntheticLambda1;->f$0:I

    iput-boolean p2, p0, Lcom/android/systemui/doze/PocketFingerprintGate$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/systemui/doze/PocketFingerprintGate$$ExternalSyntheticLambda1;->f$0:I

    iget-boolean v1, p0, Lcom/android/systemui/doze/PocketFingerprintGate$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/doze/PocketFingerprintGate;->lambda$setBlocked$1(IZ)V

    return-void
.end method
