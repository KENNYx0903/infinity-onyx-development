.class Lcom/android/systemui/doze/LunatikAodPocket$2;
.super Ljava/lang/Object;
.source "LunatikAodPocket.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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

.field final synthetic val$delivery:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/LunatikAodPocket;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodPocket$2;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    iput-object p2, p0, Lcom/android/systemui/doze/LunatikAodPocket$2;->val$delivery:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket$2;->this$0:Lcom/android/systemui/doze/LunatikAodPocket;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;
    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodPocket;->access$502(Lcom/android/systemui/doze/LunatikAodPocket;Landroid/app/AlarmManager$OnAlarmListener;)Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket$2;->val$delivery:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
