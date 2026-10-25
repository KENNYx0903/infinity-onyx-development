.class Lcom/android/systemui/doze/LunatikAodVisual$9;
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
.field final synthetic val$committed:Ljava/lang/Runnable;

.field final synthetic val$completed:[Z

.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$generation:I

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>([ZILandroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$completed:[Z

    iput p2, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$generation:I

    iput-object p3, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$target:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$committed:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$completed:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_38

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$000()Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$generation:I

    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->entryGeneration:I
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$1400()I

    move-result v1

    if-ne v0, v1, :cond_38

    .line 129
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$committed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->unregisterFrameCommitCallback(Ljava/lang/Runnable;)Z

    .line 130
    :cond_2c
    const-string v0, "LunatikAodVisual"

    const-string v1, "hidden frame callback timeout; bounded fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$9;->val$done:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    :cond_38
    return-void
.end method
