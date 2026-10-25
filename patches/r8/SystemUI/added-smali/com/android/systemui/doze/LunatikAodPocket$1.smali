.class Lcom/android/systemui/doze/LunatikAodPocket$1;
.super Ljava/lang/Object;
.source "LunatikAodPocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/LunatikAodPocket;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/LunatikAodPocket;

.field final synthetic val$expected:J

.field final synthetic val$next:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/LunatikAodPocket;JLjava/lang/Boolean;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    iput-wide p2, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->val$expected:J

    iput-object p4, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->val$next:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 73
    const-string v0, "LunatikAodPocket"

    iget-object v1, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    # getter for: Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z
    invoke-static {v1}, Lcom/android/systemui/doze/LunatikAodPocket;->access$000(Lcom/android/systemui/doze/LunatikAodPocket;)Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    # getter for: Lcom/android/systemui/doze/LunatikAodPocket;->generation:J
    invoke-static {v1}, Lcom/android/systemui/doze/LunatikAodPocket;->access$100(Lcom/android/systemui/doze/LunatikAodPocket;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->val$expected:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    goto/16 :goto_90

    .line 75
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    # getter for: Lcom/android/systemui/doze/LunatikAodPocket;->owner:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui/doze/LunatikAodPocket;->access$200(Lcom/android/systemui/doze/LunatikAodPocket;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mProxCallback"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    # getter for: Lcom/android/systemui/doze/LunatikAodPocket;->owner:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/systemui/doze/LunatikAodPocket;->access$200(Lcom/android/systemui/doze/LunatikAodPocket;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 76
    if-eqz v1, :cond_70

    .line 77
    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->val$next:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    # getter for: Lcom/android/systemui/doze/LunatikAodPocket;->deliveredNear:Z
    invoke-static {v2}, Lcom/android/systemui/doze/LunatikAodPocket;->access$300(Lcom/android/systemui/doze/LunatikAodPocket;)Z

    move-result v2

    if-eqz v2, :cond_4d

    # setter for: Lcom/android/systemui/doze/LunatikAodPocket;->resumeHandoff:Z
    invoke-static {v3}, Lcom/android/systemui/doze/LunatikAodPocket;->access$402(Z)Z

    invoke-static {}, Lcom/android/systemui/doze/PocketResume120;->resume()V

    .line 78
    :cond_4d
    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    iget-object v4, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->val$next:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5a

    move v4, v3

    goto :goto_5b

    :cond_5a
    move v4, v5

    :goto_5b
    # setter for: Lcom/android/systemui/doze/LunatikAodPocket;->deliveredNear:Z
    invoke-static {v2, v4}, Lcom/android/systemui/doze/LunatikAodPocket;->access$302(Lcom/android/systemui/doze/LunatikAodPocket;Z)Z

    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->val$next:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_67

    goto :goto_68

    :cond_67
    move v3, v5

    :goto_68
    invoke-static {v3}, Lcom/android/systemui/doze/PocketFingerprintGate;->setBlocked(Z)V

    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->val$next:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 80
    :cond_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonUi far="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket$1;->val$next:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_88} :catch_89

    .line 81
    goto :goto_8f

    :catch_89
    move-exception v1

    const-string v2, "NonUi delivery failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_8f
    return-void

    .line 73
    :cond_90
    :goto_90
    return-void
.end method
