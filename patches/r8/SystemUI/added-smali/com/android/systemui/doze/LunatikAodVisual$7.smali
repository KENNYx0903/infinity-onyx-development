.class Lcom/android/systemui/doze/LunatikAodVisual$7;
.super Ljava/lang/Object;
.source "LunatikAodVisual.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/LunatikAodVisual;->hiddenFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completed:[Z

.field final synthetic val$generation:I


# direct methods
.method constructor <init>([ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodVisual$7;->val$completed:[Z

    iput p2, p0, Lcom/android/systemui/doze/LunatikAodVisual$7;->val$generation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$7;->val$completed:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_31

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$000()Z

    move-result v0

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$7;->val$generation:I

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->entryGeneration:I
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1400()I

    move-result v2

    if-eq v0, v2, :cond_16

    goto :goto_31

    .line 113
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$7;->val$completed:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 114
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->entryFadeFinished()V

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    # setter for: Lcom/android/systemui/doze/LunatikAodVisual;->handoffStart:J
    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodVisual;->access$302(J)J

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->handoff:Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1500()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void

    .line 112
    :cond_31
    :goto_31
    return-void
.end method
