.class public final Lcom/android/systemui/keyguard/OnyxLockHaptic;
.super Ljava/lang/Object;
.source "OnyxLockHaptic.java"


# static fields
.field private static final WORK:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/OnyxLockHaptic;->WORK:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fallback(Landroid/content/Context;)V
    .registers 4

    .line 11
    :try_start_0
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/systemui/keyguard/OnyxLockHaptic;->setting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_34

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p0

    const-string v0, "OnyxLockHaptic"

    const-string v1, "fallback failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    return-void
.end method

.method static synthetic lambda$play$0(Landroid/content/Context;)V
    .registers 7

    .line 6
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_52

    .line 7
    :try_start_5
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "lunatik_lock_haptic"

    invoke-direct {v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    const-string v1, "haptic_feedback_intensity"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/android/systemui/keyguard/OnyxLockHaptic;->setting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/systemui/keyguard/OnyxLockHaptic;->setting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_26

    move v1, v4

    :cond_26
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v5, 0x3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v1, v3, :cond_44

    invoke-static {p0}, Lcom/android/systemui/keyguard/OnyxLockHaptic;->fallback(Landroid/content/Context;)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_48

    .line 8
    :cond_44
    :try_start_44
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_52

    goto :goto_5d

    .line 6
    :catchall_48
    move-exception v1

    :try_start_49
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v0

    :try_start_4e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_52

    .line 8
    :catch_52
    move-exception v0

    const-string v1, "OnyxLockHaptic"

    const-string v2, "RTP unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/android/systemui/keyguard/OnyxLockHaptic;->fallback(Landroid/content/Context;)V

    .line 9
    :goto_5d
    return-void
.end method

.method public static play(Landroid/content/Context;)V
    .registers 3

    .line 5
    sget-object v0, Lcom/android/systemui/keyguard/OnyxLockHaptic;->WORK:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/keyguard/OnyxLockHaptic$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/OnyxLockHaptic$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method static setting(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    const-class v0, Landroid/provider/Settings$System;

    const-class v1, Landroid/content/ContentResolver;

    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getIntForUser"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, p1, p2, v1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
