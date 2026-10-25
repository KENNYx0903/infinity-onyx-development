.class public final Lcom/android/server/display/mode/LunatikAodBrightness;
.super Ljava/lang/Object;
.source "LunatikAodBrightness.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final CONFIRM_MS:J = 0x9c4L

.field private static final INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;


# instance fields
.field private active:Z

.field private ambientMode:I

.field private final apply:Ljava/lang/Runnable;

.field private candidate:I

.field private candidateSince:J

.field private final confirm:Ljava/lang/Runnable;

.field private confirmLock:Landroid/os/PowerManager$WakeLock;

.field private volatile displayState:I

.field private draw:Landroid/os/PowerManager$WakeLock;

.field private final handler:Landroid/os/Handler;

.field private last:I

.field private pending:I

.field private registered:Z

.field private volatile requested:Z

.field private retries:I

.field private sensors:Landroid/hardware/SensorManager;

.field private vendorLight:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/android/server/display/mode/LunatikAodBrightness;

    invoke-direct {v0}, Lcom/android/server/display/mode/LunatikAodBrightness;-><init>()V

    sput-object v0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/android/server/display/mode/LunatikAodBrightness;->worker()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->last:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->ambientMode:I

    iput v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I

    iput v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I

    .line 33
    new-instance v0, Lcom/android/server/display/mode/LunatikAodBrightness$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/LunatikAodBrightness$1;-><init>(Lcom/android/server/display/mode/LunatikAodBrightness;)V

    iput-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirm:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Lcom/android/server/display/mode/LunatikAodBrightness$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/LunatikAodBrightness$2;-><init>(Lcom/android/server/display/mode/LunatikAodBrightness;)V

    iput-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->apply:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/mode/LunatikAodBrightness;)Z
    .registers 1

    .line 7
    iget-boolean p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->active:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/display/mode/LunatikAodBrightness;)Z
    .registers 1

    .line 7
    iget-boolean p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/display/mode/LunatikAodBrightness;I)Z
    .registers 2

    .line 7
    invoke-direct {p0, p1}, Lcom/android/server/display/mode/LunatikAodBrightness;->write(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/display/mode/LunatikAodBrightness;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/display/mode/LunatikAodBrightness;)I
    .registers 1

    .line 7
    iget p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/display/mode/LunatikAodBrightness;I)I
    .registers 2

    .line 7
    iput p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/mode/LunatikAodBrightness;)J
    .registers 3

    .line 7
    iget-wide v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidateSince:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/display/mode/LunatikAodBrightness;)Landroid/os/Handler;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/server/display/mode/LunatikAodBrightness;I)I
    .registers 2

    .line 7
    iput p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->ambientMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/mode/LunatikAodBrightness;)I
    .registers 1

    .line 7
    iget p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/display/mode/LunatikAodBrightness;I)I
    .registers 2

    .line 7
    iput p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/display/mode/LunatikAodBrightness;I)I
    .registers 2

    .line 7
    iput p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->retries:I

    return p1
.end method

.method static synthetic access$704(Lcom/android/server/display/mode/LunatikAodBrightness;)I
    .registers 2

    .line 7
    iget v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->retries:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/mode/LunatikAodBrightness;)V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/android/server/display/mode/LunatikAodBrightness;->requestDraw()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/mode/LunatikAodBrightness;)I
    .registers 1

    .line 7
    iget p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I

    return p0
.end method

.method public static onDisplayState(I)V
    .registers 4

    .line 21
    sget-object v0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    iput p0, v0, Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I

    .line 22
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1f

    sget-object p0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-object p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-object v0, v0, Lcom/android/server/display/mode/LunatikAodBrightness;->apply:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-object p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-object v0, v0, Lcom/android/server/display/mode/LunatikAodBrightness;->apply:Ljava/lang/Runnable;

    const-wide/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    :cond_1f
    return-void
.end method

.method private record(Ljava/lang/String;)V
    .registers 9

    .line 25
    const-string v0, "LunatikAodBrightness"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :try_start_5
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/lunatik-aod-brightness.log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x20000

    cmp-long v3, v3, v5

    if-gez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_6c

    .line 29
    :try_start_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " elapsed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5e
    .catchall {:try_start_1f .. :try_end_5e} :catchall_62

    .line 30
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_6c

    .line 31
    goto :goto_73

    .line 28
    :catchall_62
    move-exception p1

    :try_start_63
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6b

    :catchall_67
    move-exception v1

    :try_start_68
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6b
    throw p1
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_6c

    .line 31
    :catch_6c
    move-exception p1

    const-string/jumbo v1, "persistent diagnostic unavailable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_73
    return-void
.end method

.method private requestDraw()V
    .registers 5

    .line 46
    iget-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->active:Z

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->draw:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_d

    goto :goto_50

    .line 48
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->draw:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRAW acquired pending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->record(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->apply:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->apply:Ljava/lang/Runnable;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void

    .line 46
    :cond_50
    :goto_50
    return-void
.end method

.method public static set(Z)V
    .registers 2

    .line 19
    sget-object v0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-boolean v0, v0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    if-ne v0, p0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    iput-boolean p0, v0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    sget-object p0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    iget-object p0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/display/mode/LunatikAodBrightness;->INSTANCE:Lcom/android/server/display/mode/LunatikAodBrightness;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static worker()Landroid/os/Handler;
    .registers 2

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LunatikAodBrightness"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method private write(I)Z
    .registers 8

    .line 96
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lez p1, :cond_d

    iget-boolean v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I

    if-eq v2, v0, :cond_d

    :cond_c
    return v1

    .line 97
    :cond_d
    iget v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->last:I

    const/4 v3, 0x1

    if-eq v2, p1, :cond_c4

    iget v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->last:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1b

    if-nez p1, :cond_1b

    goto/16 :goto_c4

    .line 98
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "native begin mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " displayState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/mode/LunatikAodBrightness;->record(Ljava/lang/String;)V

    .line 100
    if-lez p1, :cond_49

    iget-boolean v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    if-eqz v2, :cond_48

    iget v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I

    if-eq v2, v0, :cond_49

    :cond_48
    return v1

    .line 101
    :cond_49
    :try_start_49
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v2, "/sys/class/mi_display/disp-DSI-0/doze_brightness"

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_9d

    .line 102
    :try_start_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    iput p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->last:I

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "native done mode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/mode/LunatikAodBrightness;->record(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_50 .. :try_end_8f} :catchall_93

    .line 104
    :try_start_8f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_9d

    .line 103
    return v3

    .line 101
    :catchall_93
    move-exception v2

    :try_start_94
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_98

    goto :goto_9c

    :catchall_98
    move-exception v0

    :try_start_99
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9c
    throw v2
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9d} :catch_9d

    .line 104
    :catch_9d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "native failed mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " state="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->displayState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "LunatikAodBrightness"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 97
    :cond_c4
    :goto_c4
    return v3
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 94
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 81
    iget-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->active:Z

    if-eqz v0, :cond_cb

    iget-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    if-eqz v0, :cond_cb

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-nez v0, :cond_f

    goto/16 :goto_cb

    .line 82
    :cond_f
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ca

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_ca

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_27

    goto/16 :goto_ca

    .line 83
    :cond_27
    iget v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->ambientMode:I

    .line 84
    iget-boolean v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->vendorLight:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_47

    .line 86
    const/high16 v0, 0x40800000    # 4.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_37

    move v0, v3

    goto :goto_56

    :cond_37
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_45

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_44

    goto :goto_45

    :cond_44
    return-void

    :cond_45
    :goto_45
    move v0, v2

    goto :goto_56

    .line 87
    :cond_47
    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4f

    move v0, v2

    goto :goto_56

    :cond_4f
    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_56

    move v0, v3

    .line 88
    :cond_56
    :goto_56
    iget v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->ambientMode:I

    if-ne v0, v1, :cond_7a

    iget-object p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirm:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I

    iget-object p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_79

    iget p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I

    if-ge p1, v3, :cond_79

    iget-object p1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_79
    return-void

    .line 89
    :cond_7a
    iget v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I

    if-ne v1, v0, :cond_7f

    return-void

    .line 90
    :cond_7f
    iget-object v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidateSince:J

    .line 91
    iget-object v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirm:Ljava/lang/Runnable;

    const-wide/16 v3, 0x9c4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "candidate sensorValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " mode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " confirmMs="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/display/mode/LunatikAodBrightness;->record(Ljava/lang/String;)V

    .line 93
    return-void

    .line 82
    :cond_ca
    :goto_ca
    return-void

    .line 81
    :cond_cb
    :goto_cb
    return-void
.end method

.method public run()V
    .registers 10

    .line 53
    iget-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->active:Z

    iget-boolean v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->requested:Z

    iput-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->active:Z

    .line 54
    iget-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_54

    .line 55
    iget-boolean v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->registered:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->sensors:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->registered:Z

    .line 56
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->apply:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->candidate:I

    iput v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I

    .line 57
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->draw:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->draw:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->draw:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 58
    :cond_3f
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 59
    :cond_50
    invoke-direct {p0, v1}, Lcom/android/server/display/mode/LunatikAodBrightness;->write(I)Z

    return-void

    .line 62
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->sensors:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    if-nez v0, :cond_ae

    .line 63
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "currentActivityThread"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    const-string/jumbo v4, "getSystemContext"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 65
    const-class v3, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->sensors:Landroid/hardware/SensorManager;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 66
    const-string v3, "LunatikAod:brightness-draw"

    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->draw:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->draw:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 67
    const-string v3, "LunatikAod:brightness-confirm"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->confirmLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 69
    :cond_ae
    iget v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->ambientMode:I

    iput v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->pending:I

    iput v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->retries:I

    invoke-direct {p0}, Lcom/android/server/display/mode/LunatikAodBrightness;->requestDraw()V

    .line 70
    iput-boolean v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->vendorLight:Z

    .line 71
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->sensors:Landroid/hardware/SensorManager;

    const v1, 0x1fa2655

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_d3

    iget-object v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->sensors:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, p0, v0, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->registered:Z

    iget-boolean v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->registered:Z

    iput-boolean v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->vendorLight:Z

    .line 73
    :cond_d3
    iget-boolean v1, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->registered:Z

    if-nez v1, :cond_fb

    .line 74
    iget-object v0, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->sensors:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    .line 75
    if-eqz v5, :cond_f8

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    if-ne v0, v2, :cond_f8

    iget-object v3, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->sensors:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/server/display/mode/LunatikAodBrightness;->handler:Landroid/os/Handler;

    const v6, 0xf4240

    const v7, 0x4c4b40

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/server/display/mode/LunatikAodBrightness;->registered:Z

    goto :goto_f9

    :cond_f8
    move-object v4, p0

    .line 77
    :goto_f9
    move-object v0, v5

    goto :goto_fc

    .line 73
    :cond_fb
    move-object v4, p0

    .line 77
    :goto_fc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto sensor registered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v4, Lcom/android/server/display/mode/LunatikAodBrightness;->registered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vendorWakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v4, Lcom/android/server/display/mode/LunatikAodBrightness;->vendorLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_125

    const-string/jumbo v0, "none"

    goto :goto_129

    :cond_125
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/mode/LunatikAodBrightness;->record(Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_134} :catch_135

    .line 78
    goto :goto_13e

    :catch_135
    move-exception v0

    const-string v1, "LunatikAodBrightness"

    const-string/jumbo v2, "setup failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :goto_13e
    return-void
.end method
