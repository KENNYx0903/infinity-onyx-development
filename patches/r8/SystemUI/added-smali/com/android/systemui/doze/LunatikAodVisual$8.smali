.class Lcom/android/systemui/doze/LunatikAodVisual$8;
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
.field final synthetic val$done:Ljava/lang/Runnable;

.field final synthetic val$generation:I


# direct methods
.method constructor <init>(ILjava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    iput p1, p0, Lcom/android/systemui/doze/LunatikAodVisual$8;->val$generation:I

    iput-object p2, p0, Lcom/android/systemui/doze/LunatikAodVisual$8;->val$done:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 121
    # getter for: Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/LunatikAodVisual$8$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/LunatikAodVisual$8$1;-><init>(Lcom/android/systemui/doze/LunatikAodVisual$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
