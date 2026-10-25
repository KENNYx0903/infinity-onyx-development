.class Lcom/android/systemui/doze/LunatikAodVisual$8$1;
.super Ljava/lang/Object;
.source "LunatikAodVisual.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/LunatikAodVisual$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/LunatikAodVisual$8;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/LunatikAodVisual$8;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodVisual$8$1;->this$0:Lcom/android/systemui/doze/LunatikAodVisual$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidden frame committed generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/LunatikAodVisual$8$1;->this$0:Lcom/android/systemui/doze/LunatikAodVisual$8;

    iget v1, v1, Lcom/android/systemui/doze/LunatikAodVisual$8;->val$generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LunatikAodVisual"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodVisual$8$1;->this$0:Lcom/android/systemui/doze/LunatikAodVisual$8;

    iget-object v0, v0, Lcom/android/systemui/doze/LunatikAodVisual$8;->val$done:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 123
    return-void
.end method
