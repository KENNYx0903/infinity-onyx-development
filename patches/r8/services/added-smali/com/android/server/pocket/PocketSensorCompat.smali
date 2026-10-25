.class public final Lcom/android/server/pocket/PocketSensorCompat;
.super Ljava/lang/Object;
.source "PocketSensorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pocket/PocketSensorCompat$State;
    }
.end annotation


# static fields
.field static final OEM:I = 0x1fa2697

.field static final states:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/pocket/PocketSensorCompat$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/server/pocket/PocketSensorCompat;->states:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lcom/android/server/pocket/PocketSensorCompat;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$retainOnWake$0(Lcom/android/server/pocket/PocketSensorCompat$State;Ljava/lang/Object;)V
    .registers 3

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pocket/PocketSensorCompat$State;->release:Ljava/lang/Runnable;

    :try_start_3
    const-string/jumbo p0, "update$2"

    invoke-static {p1, p0}, Lcom/android/server/pocket/PocketSensorCompat;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p0

    const-string p1, "PocketSensorCompat"

    const-string v0, "Wake check completion"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public static pocketValue(Ljava/lang/Object;)F
    .registers 3

    .line 8
    :try_start_0
    const-string/jumbo v0, "mVendorSensor"

    invoke-static {p0, v0}, Lcom/android/server/pocket/PocketSensorCompat;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1fa2697

    if-ne v0, v1, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const-string/jumbo v0, "mVendorPocketSensorValue"

    invoke-static {p0, v0}, Lcom/android/server/pocket/PocketSensorCompat;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static retainOnWake(Ljava/lang/Object;)Z
    .registers 9

    .line 11
    const-string v0, "PocketSensorCompat"

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v2, "mVendorSensor"

    invoke-static {p0, v2}, Lcom/android/server/pocket/PocketSensorCompat;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    if-eqz v2, :cond_7c

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v3, 0x1fa2697

    if-eq v2, v3, :cond_18

    goto :goto_7c

    :cond_18
    sget-object v2, Lcom/android/server/pocket/PocketSensorCompat;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pocket/PocketSensorCompat$State;

    if-nez v2, :cond_2c

    new-instance v2, Lcom/android/server/pocket/PocketSensorCompat$State;

    invoke-direct {v2}, Lcom/android/server/pocket/PocketSensorCompat$State;-><init>()V

    sget-object v3, Lcom/android/server/pocket/PocketSensorCompat;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    const-string/jumbo v3, "mHandler"

    invoke-static {p0, v3}, Lcom/android/server/pocket/PocketSensorCompat;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    const-string/jumbo v4, "mInteractive"

    invoke-static {p0, v4}, Lcom/android/server/pocket/PocketSensorCompat;->b(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v5, "mEnabled"

    invoke-static {p0, v5}, Lcom/android/server/pocket/PocketSensorCompat;->b(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    if-nez v4, :cond_48

    goto :goto_6e

    .line 12
    :cond_48
    iget-boolean v4, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->interactive:Z

    const/4 v5, 0x1

    if-nez v4, :cond_62

    iput-boolean v5, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->interactive:Z

    new-instance v4, Lcom/android/server/pocket/PocketSensorCompat$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p0}, Lcom/android/server/pocket/PocketSensorCompat$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pocket/PocketSensorCompat$State;Ljava/lang/Object;)V

    iput-object v4, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->release:Ljava/lang/Runnable;

    iget-object v4, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->release:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v3, "Wake grace 1500ms"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_62
    iget-object v2, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->release:Ljava/lang/Runnable;

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "registerSensorListeners"

    invoke-static {p0, v2}, Lcom/android/server/pocket/PocketSensorCompat;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return v5

    .line 14
    :cond_6d
    goto :goto_83

    .line 11
    :cond_6e
    :goto_6e
    iget-object p0, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->release:Ljava/lang/Runnable;

    if-eqz p0, :cond_77

    iget-object p0, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->release:Ljava/lang/Runnable;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_77
    const/4 p0, 0x0

    iput-object p0, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->release:Ljava/lang/Runnable;

    iput-boolean v4, v2, Lcom/android/server/pocket/PocketSensorCompat$State;->interactive:Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7c} :catch_7d

    :cond_7c
    :goto_7c
    return v1

    .line 14
    :catch_7d
    move-exception p0

    const-string v2, "Wake grace"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_83
    return v1
.end method

.method public static select(Ljava/lang/Object;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .registers 5

    .line 7
    const-string v0, "PocketSensorCompat"

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    :try_start_5
    const-string/jumbo v1, "mSensorManager"

    invoke-static {p0, v1}, Lcom/android/server/pocket/PocketSensorCompat;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const v1, 0x1fa2697

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using Xiaomi OEM pocket v2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    const-string v1, "Sensor selection"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    return-object p1
.end method
