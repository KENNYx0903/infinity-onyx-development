.class public final Lcom/android/server/display/LunatikAodWake;
.super Ljava/lang/Object;
.source "LunatikAodWake.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepare(Landroid/os/IBinder;IIJ)V
    .registers 10

    .line 10
    const-string v0, "LunatikAodWake"

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9a

    const/4 p1, 0x3

    if-eq p2, p1, :cond_d

    const/4 p1, 0x4

    if-eq p2, p1, :cond_d

    goto/16 :goto_9a

    .line 12
    :cond_d
    :try_start_d
    const-string p1, "android.view.SurfaceControl"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 13
    const-string/jumbo p2, "com.android.server.display.DisplayControl"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 14
    const-string/jumbo v1, "getPhysicalDisplayIds"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    .line 15
    array-length v1, p2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_91

    aget-wide v1, p2, v2

    cmp-long p2, v1, p3

    if-eqz p2, :cond_38

    goto :goto_91

    .line 16
    :cond_38
    invoke-static {}, Lcom/android/server/display/LunatikAodWake;->rate()F

    move-result p2

    const/high16 p3, 0x42200000    # 40.0f

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_43

    return-void

    .line 17
    :cond_43
    const-string/jumbo p2, "setDisplayPowerMode"

    const-class p4, Landroid/os/IBinder;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p4, v1}, [Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    const-wide/16 v1, 0xc8

    add-long/2addr p0, v1

    .line 21
    :cond_64
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 22
    invoke-static {}, Lcom/android/server/display/LunatikAodWake;->rate()F

    move-result p2

    .line 23
    cmpg-float p4, p2, p3

    if-gez p4, :cond_79

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    cmp-long p4, v1, p0

    if-ltz p4, :cond_64

    .line 24
    :cond_79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "pre-wake frame rate="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_92

    .line 25
    goto :goto_99

    .line 15
    :cond_91
    :goto_91
    return-void

    .line 25
    :catchall_92
    move-exception p0

    const-string/jumbo p1, "pre-wake failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_99
    return-void

    .line 10
    :cond_9a
    :goto_9a
    return-void
.end method

.method private static rate()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/virtual/mi_display/disp_feature/disp-DSI-0/dynamic_fps"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 30
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    .line 31
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 30
    return v1

    .line 28
    :catchall_1c
    move-exception v1

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw v1
.end method
