.class public final Lcom/android/systemui/doze/LunatikAodPocket;
.super Ljava/lang/Object;
.source "LunatikAodPocket.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final NON_UI:I = 0x1fa2653

.field private static instance:Lcom/android/systemui/doze/LunatikAodPocket;

.field private static resumeHandoff:Z


# instance fields
.field private final alarms:Landroid/app/AlarmManager;

.field private deliveredNear:Z

.field private far:Ljava/lang/Boolean;

.field private generation:J

.field private final handler:Landroid/os/Handler;

.field private final manager:Landroid/hardware/SensorManager;

.field private final owner:Ljava/lang/Object;

.field private pending:Landroid/app/AlarmManager$OnAlarmListener;

.field private registered:Z

.field private final sensor:Landroid/hardware/Sensor;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->owner:Ljava/lang/Object;

    .line 27
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "currentApplication"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 28
    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->alarms:Landroid/app/AlarmManager;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->alarms:Landroid/app/AlarmManager;

    if-eqz v0, :cond_5c

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mSensorManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->manager:Landroid/hardware/SensorManager;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mHandler"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->handler:Landroid/os/Handler;

    .line 32
    iget-object p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->manager:Landroid/hardware/SensorManager;

    const v0, 0x1fa2653

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->sensor:Landroid/hardware/Sensor;

    .line 33
    return-void

    .line 29
    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AlarmManager unavailable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/LunatikAodPocket;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/LunatikAodPocket;)J
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->generation:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/LunatikAodPocket;)Ljava/lang/Object;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->owner:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/LunatikAodPocket;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->deliveredNear:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/doze/LunatikAodPocket;Z)Z
    .registers 2

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->deliveredNear:Z

    return p1
.end method

.method static synthetic access$402(Z)Z
    .registers 1

    .line 10
    sput-boolean p0, Lcom/android/systemui/doze/LunatikAodPocket;->resumeHandoff:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/doze/LunatikAodPocket;Landroid/app/AlarmManager$OnAlarmListener;)Landroid/app/AlarmManager$OnAlarmListener;
    .registers 2

    .line 10
    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p1
.end method

.method public static consumeResume()Z
    .registers 2

    .line 15
    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodPocket;->resumeHandoff:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/doze/LunatikAodPocket;->resumeHandoff:Z

    return v0
.end method

.method public static setListening(Ljava/lang/Object;Z)Z
    .registers 8

    .line 37
    const-string v0, "LunatikAodPocket"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/android/systemui/doze/LunatikAodPocket;->instance:Lcom/android/systemui/doze/LunatikAodPocket;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/systemui/doze/LunatikAodPocket;->instance:Lcom/android/systemui/doze/LunatikAodPocket;

    iget-object v2, v2, Lcom/android/systemui/doze/LunatikAodPocket;->owner:Ljava/lang/Object;

    if-eq v2, p0, :cond_1d

    .line 38
    :cond_d
    sget-object v2, Lcom/android/systemui/doze/LunatikAodPocket;->instance:Lcom/android/systemui/doze/LunatikAodPocket;

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/systemui/doze/LunatikAodPocket;->instance:Lcom/android/systemui/doze/LunatikAodPocket;

    invoke-direct {v2}, Lcom/android/systemui/doze/LunatikAodPocket;->stop()V

    .line 39
    :cond_16
    new-instance v2, Lcom/android/systemui/doze/LunatikAodPocket;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/LunatikAodPocket;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/systemui/doze/LunatikAodPocket;->instance:Lcom/android/systemui/doze/LunatikAodPocket;

    .line 41
    :cond_1d
    sget-object p0, Lcom/android/systemui/doze/LunatikAodPocket;->instance:Lcom/android/systemui/doze/LunatikAodPocket;

    .line 42
    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->sensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_24

    return v1

    .line 43
    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5c

    .line 44
    const-string p1, "android.app.ActivityThread"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v4, "currentApplication"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 45
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 46
    iget-boolean v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->deliveredNear:Z

    if-eqz v2, :cond_58

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_58

    const-string p0, "Keep NonUi while pocket-paused"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 47
    :cond_58
    invoke-direct {p0}, Lcom/android/systemui/doze/LunatikAodPocket;->stop()V

    return v3

    .line 49
    :cond_5c
    iget-boolean p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z

    if-eqz p1, :cond_61

    return v3

    .line 50
    :cond_61
    iput-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->far:Ljava/lang/Boolean;

    iget-wide v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->generation:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->generation:J

    .line 51
    iget-object p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->manager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/systemui/doze/LunatikAodPocket;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {p1, p0, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonUi listening="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_91} :catch_92

    return p0

    .line 54
    :catch_92
    move-exception p0

    const-string p1, "NonUi unavailable; use stock proximity"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private stop()V
    .registers 5

    .line 57
    iget-wide v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->generation:J

    .line 58
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->alarms:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-object v1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    .line 59
    :cond_15
    iget-boolean v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->manager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/systemui/doze/LunatikAodPocket;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iput-boolean v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z

    const-string v0, "LunatikAodPocket"

    const-string v3, "NonUi stopped"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2a
    iput-object v1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->far:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->deliveredNear:Z

    sput-boolean v2, Lcom/android/systemui/doze/LunatikAodPocket;->resumeHandoff:Z

    invoke-static {v2}, Lcom/android/systemui/doze/PocketFingerprintGate;->setBlocked(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 91
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->registered:Z

    if-eqz v0, :cond_aa

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->sensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_aa

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-nez v0, :cond_11

    goto/16 :goto_aa

    .line 64
    :cond_11
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    .line 65
    const/4 v1, 0x1

    if-eqz p1, :cond_20

    if-eq p1, v1, :cond_20

    const/4 v2, 0x2

    if-eq p1, v2, :cond_20

    return-void

    .line 66
    :cond_20
    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->far:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    return-void

    .line 68
    :cond_31
    iput-object v1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->far:Ljava/lang/Boolean;

    iget-wide v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->generation:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/systemui/doze/LunatikAodPocket;->generation:J

    .line 69
    iget-object v4, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v4, :cond_45

    iget-object v4, p0, Lcom/android/systemui/doze/LunatikAodPocket;->alarms:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 70
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NonUi raw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " far="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " delayMs="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6b

    goto :goto_6d

    :cond_6b
    const/16 v0, 0x1388

    :goto_6d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LunatikAodPocket"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p1, Lcom/android/systemui/doze/LunatikAodPocket$1;

    invoke-direct {p1, p0, v2, v3, v1}, Lcom/android/systemui/doze/LunatikAodPocket$1;-><init>(Lcom/android/systemui/doze/LunatikAodPocket;JLjava/lang/Boolean;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a9

    .line 86
    :cond_8e
    new-instance v0, Lcom/android/systemui/doze/LunatikAodPocket$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/doze/LunatikAodPocket$2;-><init>(Lcom/android/systemui/doze/LunatikAodPocket;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    .line 87
    iget-object v1, p0, Lcom/android/systemui/doze/LunatikAodPocket;->alarms:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long v3, v2, v4

    iget-object v6, p0, Lcom/android/systemui/doze/LunatikAodPocket;->pending:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/systemui/doze/LunatikAodPocket;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-string v5, "LunatikAod:NonUiConfirm"

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 90
    :goto_a9
    return-void

    .line 63
    :cond_aa
    :goto_aa
    return-void
.end method
