.class public final Lcom/android/systemui/doze/LunatikAodTransition;
.super Ljava/lang/Object;
.source "LunatikAodTransition.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static activeService:Landroid/service/dreams/DreamService;

.field private static biometricUntil:J

.field private static clock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static clockState:I

.field private static entryWaiting:Z

.field private static final handler:Landroid/os/Handler;

.field private static hideClockUntil:J

.field private static keyguardEntry:J

.field private static keyguardFromShade:Z

.field private static lastAod:J

.field private static pending:Lcom/android/systemui/doze/LunatikAodTransition;

.field private static plugged:I

.field private static requestedState:I


# instance fields
.field private awaitingFrame:Z

.field private frames:I

.field private final lock:Landroid/os/PowerManager$WakeLock;

.field private final service:Landroid/service/dreams/DreamService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->handler:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->clock:Ljava/lang/ref/WeakReference;

    .line 23
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/doze/LunatikAodTransition;->plugged:I

    .line 25
    sput v0, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    return-void
.end method

.method private constructor <init>(Landroid/service/dreams/DreamService;)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodTransition;->service:Landroid/service/dreams/DreamService;

    .line 113
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "Lunatik:AodModeset"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/LunatikAodTransition;->lock:Landroid/os/PowerManager$WakeLock;

    .line 114
    return-void
.end method

.method public static alignClock(Landroid/view/View;)V
    .registers 7

    .line 71
    const-string v0, "id"

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentClockView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 72
    if-nez p0, :cond_15

    return-void

    .line 73
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "clock"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_8f

    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_46

    goto :goto_8f

    .line 77
    :cond_46
    invoke-static {v2, p0}, Lcom/android/systemui/doze/LunatikAodTransition;->top(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    invoke-static {v0, p0}, Lcom/android/systemui/doze/LunatikAodTransition;->top(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    .line 78
    sub-int v3, v1, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_65

    return-void

    .line 79
    :cond_65
    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    add-int/2addr p0, v3

    sub-int/2addr p0, v1

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    sub-int/2addr p0, v1

    .line 80
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_8e

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setTranslationY(F)V
    :try_end_8e
    .catchall {:try_start_2 .. :try_end_8e} :catchall_90

    .line 81
    :cond_8e
    goto :goto_98

    .line 76
    :cond_8f
    :goto_8f
    return-void

    .line 81
    :catchall_90
    move-exception p0

    const-string v0, "LunatikAod"

    const-string v1, "clock baseline failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_98
    return-void
.end method

.method private static apply(Landroid/service/dreams/DreamService;I)V
    .registers 5

    invoke-static {p0, p1}, Lcom/android/systemui/doze/PocketResume120;->adjust(Landroid/service/dreams/DreamService;I)I

    move-result p1

    .line 164
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "lunatikApplyScreenState"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_20

    .line 165
    goto :goto_28

    :catchall_20
    move-exception p0

    const-string p1, "LunatikAod"

    const-string v0, "display state failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_28
    return-void
.end method

.method private static applyRequestedState()V
    .registers 4

    .line 136
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    if-nez v0, :cond_5

    return-void

    .line 137
    :cond_5
    sget v0, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    sget v1, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;->apply(Landroid/service/dreams/DreamService;I)V

    return-void

    .line 138
    :cond_12
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->updateClock()V

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;->apply(Landroid/service/dreams/DreamService;I)V

    .line 139
    new-instance v0, Lcom/android/systemui/doze/LunatikAodTransition;

    sget-object v1, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;-><init>(Landroid/service/dreams/DreamService;)V

    .line 140
    sput-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    iget-object v1, v0, Lcom/android/systemui/doze/LunatikAodTransition;->lock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    sget-object v1, Lcom/android/systemui/doze/LunatikAodTransition;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x28a

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void
.end method

.method public static battery(I)V
    .registers 3

    .line 104
    sget v0, Lcom/android/systemui/doze/LunatikAodTransition;->plugged:I

    sput p0, Lcom/android/systemui/doze/LunatikAodTransition;->plugged:I

    .line 105
    if-eq v0, p0, :cond_10

    sget p0, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_10

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;->refreshWindow(J)V

    .line 106
    :cond_10
    return-void
.end method

.method public static biometric(I)V
    .registers 8

    .line 60
    const/4 v0, 0x7

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_b

    if-eq p0, v3, :cond_b

    if-ne p0, v0, :cond_18

    :cond_b
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->isAodUnlock()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    sput-wide v5, Lcom/android/systemui/doze/LunatikAodTransition;->hideClockUntil:J

    .line 61
    :cond_18
    if-eq p0, v4, :cond_1e

    if-eq p0, v3, :cond_1e

    if-ne p0, v0, :cond_25

    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/systemui/doze/LunatikAodTransition;->biometricUntil:J

    .line 62
    :cond_25
    return-void
.end method

.method private static cancel()V
    .registers 2

    .line 116
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    invoke-direct {v0}, Lcom/android/systemui/doze/LunatikAodTransition;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    .line 117
    :cond_1c
    return-void
.end method

.method public static clockDuration(JZ)J
    .registers 11

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 65
    const-wide/16 v2, 0x0

    if-eqz p2, :cond_1c

    sget v4, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    sget-boolean v4, Lcom/android/systemui/doze/LunatikAodTransition;->keyguardFromShade:Z

    if-eqz v4, :cond_1c

    sget-wide v4, Lcom/android/systemui/doze/LunatikAodTransition;->keyguardEntry:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-gez v4, :cond_1c

    :cond_1b
    return-wide v2

    .line 66
    :cond_1c
    if-nez p2, :cond_29

    sget-wide v4, Lcom/android/systemui/doze/LunatikAodTransition;->biometricUntil:J

    cmp-long p2, v0, v4

    if-ltz p2, :cond_28

    sget p2, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    if-nez p2, :cond_29

    :cond_28
    return-wide v2

    .line 67
    :cond_29
    return-wide p0
.end method

.method public static clockStateChanged(I)V
    .registers 4

    .line 29
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    sget v1, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    if-nez v1, :cond_b

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/systemui/doze/LunatikAodTransition;->hideClockUntil:J

    .line 30
    :cond_b
    if-ne p0, v0, :cond_20

    sget v1, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    if-eq v1, v0, :cond_20

    sget v1, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    if-nez v1, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    sput-boolean v1, Lcom/android/systemui/doze/LunatikAodTransition;->keyguardFromShade:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/systemui/doze/LunatikAodTransition;->keyguardEntry:J

    .line 31
    :cond_20
    sput p0, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    .line 32
    if-ne p0, v0, :cond_27

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->restoreClock()V

    .line 33
    :cond_27
    return-void
.end method

.method private static currentClock(Ljava/lang/Object;)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentClockView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public static entryFadeFinished()V
    .registers 2

    .line 130
    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodTransition;->entryWaiting:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->isAodActive()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_30

    .line 131
    :cond_f
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/doze/LunatikAodTransition;->entryWaiting:Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hidden frame ready; apply display state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LunatikAod"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->applyRequestedState()V

    .line 134
    return-void

    .line 130
    :cond_30
    :goto_30
    return-void
.end method

.method private finish()V
    .registers 3

    .line 185
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    if-eq v0, p0, :cond_5

    return-void

    .line 186
    :cond_5
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 188
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    .line 189
    :try_start_14
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodTransition;->service:Landroid/service/dreams/DreamService;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;->apply(Landroid/service/dreams/DreamService;I)V

    const-string v0, "LunatikAod"

    const-string v1, "DOZE_SUSPEND after modeset window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_25

    invoke-direct {p0}, Lcom/android/systemui/doze/LunatikAodTransition;->release()V

    .line 190
    return-void

    .line 189
    :catchall_25
    move-exception v0

    invoke-direct {p0}, Lcom/android/systemui/doze/LunatikAodTransition;->release()V

    throw v0
.end method

.method public static hideUnlockClock()Z
    .registers 4

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/doze/LunatikAodTransition;->hideClockUntil:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isAodActive()Z
    .registers 2

    .line 89
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    if-eqz v0, :cond_10

    sget v0, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    sget v0, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isAodUnlock()Z
    .registers 4

    .line 88
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->isAodActive()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/doze/LunatikAodTransition;->biometricUntil:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    sget-wide v0, Lcom/android/systemui/doze/LunatikAodTransition;->lastAod:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/doze/LunatikAodTransition;->lastAod:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method public static motionWindow()V
    .registers 2

    .line 148
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;->refreshWindow(J)V

    return-void
.end method

.method public static notificationWindow()V
    .registers 2

    .line 147
    const-wide/16 v0, 0x1c2

    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;->refreshWindow(J)V

    return-void
.end method

.method public static prepareFingerprint()Z
    .registers 2

    .line 159
    sget v0, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    if-nez v0, :cond_a

    goto :goto_f

    .line 160
    :cond_a
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->refresh()V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method public static refresh()V
    .registers 2

    .line 143
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->tick()V

    .line 144
    sget v0, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    if-eqz v0, :cond_11

    goto :goto_17

    .line 145
    :cond_11
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;->refreshWindow(J)V

    .line 146
    return-void

    .line 144
    :cond_17
    :goto_17
    return-void
.end method

.method private static refreshWindow(J)V
    .registers 6

    .line 150
    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodTransition;->entryWaiting:Z

    if-nez v0, :cond_30

    sget v0, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    if-nez v0, :cond_e

    goto :goto_30

    .line 151
    :cond_e
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->cancel()V

    .line 152
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->updateClock()V

    .line 153
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;->apply(Landroid/service/dreams/DreamService;I)V

    .line 154
    new-instance v0, Lcom/android/systemui/doze/LunatikAodTransition;

    sget-object v1, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/LunatikAodTransition;-><init>(Landroid/service/dreams/DreamService;)V

    .line 155
    sput-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    iget-object v1, v0, Lcom/android/systemui/doze/LunatikAodTransition;->lock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x578

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    sget-object v1, Lcom/android/systemui/doze/LunatikAodTransition;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void

    .line 150
    :cond_30
    :goto_30
    return-void
.end method

.method public static registerClock(Ljava/lang/Object;)V
    .registers 2

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->clock:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private release()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodTransition;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/doze/LunatikAodTransition;->lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    return-void
.end method

.method private static restoreClock()V
    .registers 4

    .line 38
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->clock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 39
    if-nez v0, :cond_9

    return-void

    .line 41
    :cond_9
    :try_start_9
    invoke-static {v0}, Lcom/android/systemui/doze/LunatikAodTransition;->currentClock(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    return-void

    .line 42
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isDozing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 43
    if-eqz v2, :cond_24

    const v0, 0x3f59999a    # 0.85f

    goto :goto_42

    :cond_24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clockSizeScale"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0x96

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x32

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 44
    :goto_42
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_4d

    .line 45
    goto :goto_55

    :catchall_4d
    move-exception v0

    const-string v1, "LunatikAod"

    const-string v2, "clock restore failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :goto_55
    return-void
.end method

.method public static seedClockState(I)V
    .registers 2

    sget v0, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    if-gez v0, :cond_7

    invoke-static {p0}, Lcom/android/systemui/doze/LunatikAodTransition;->clockStateChanged(I)V

    :cond_7
    return-void
.end method

.method public static skipClockTransition(Ljava/lang/Object;Z)Z
    .registers 7

    .line 49
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/systemui/doze/LunatikAodTransition;->currentClock(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_8

    return v0

    .line 50
    :cond_8
    if-nez p1, :cond_25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/systemui/doze/LunatikAodTransition;->biometricUntil:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_18

    sget p1, Lcom/android/systemui/doze/LunatikAodTransition;->clockState:I

    if-nez p1, :cond_25

    .line 51
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const/4 p0, 0x1

    return p0

    .line 54
    :cond_25
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    .line 55
    goto :goto_31

    :catchall_29
    move-exception p0

    const-string p1, "LunatikAod"

    const-string v1, "clock transition failed"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_31
    return v0
.end method

.method public static state(Landroid/service/dreams/DreamService;I)V
    .registers 9

    .line 120
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_8

    if-ne p1, v2, :cond_10

    :cond_8
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->isAodActive()Z

    move-result v4

    if-nez v4, :cond_10

    move v4, v0

    goto :goto_11

    :cond_10
    move v4, v1

    .line 121
    :goto_11
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->isAodActive()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sput-wide v5, Lcom/android/systemui/doze/LunatikAodTransition;->lastAod:J

    .line 122
    :cond_1d
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->cancel()V

    sput-object p0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    sput p1, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    .line 123
    if-eqz v4, :cond_28

    sput-boolean v0, Lcom/android/systemui/doze/LunatikAodTransition;->entryWaiting:Z

    .line 124
    :cond_28
    if-eq p1, v3, :cond_2e

    if-eq p1, v2, :cond_2e

    sput-boolean v1, Lcom/android/systemui/doze/LunatikAodTransition;->entryWaiting:Z

    .line 125
    :cond_2e
    if-eq p1, v3, :cond_34

    if-ne p1, v2, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    :cond_34
    :goto_34
    invoke-static {v0}, Lcom/android/systemui/doze/LunatikAodVisual;->state(Z)V

    .line 126
    sget-boolean p0, Lcom/android/systemui/doze/LunatikAodTransition;->entryWaiting:Z

    if-eqz p0, :cond_54

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "defer display state until hidden frame state="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LunatikAod"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_54
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->applyRequestedState()V

    .line 128
    return-void
.end method

.method public static stop(Landroid/service/dreams/DreamService;)V
    .registers 3

    .line 118
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->isAodActive()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/doze/LunatikAodTransition;->lastAod:J

    :cond_c
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->cancel()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/doze/LunatikAodTransition;->entryWaiting:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->activeService:Landroid/service/dreams/DreamService;

    sput p0, Lcom/android/systemui/doze/LunatikAodTransition;->requestedState:I

    invoke-static {p0}, Lcom/android/systemui/doze/LunatikAodVisual;->state(Z)V

    return-void
.end method

.method public static suppressCharging(Landroid/content/Context;)Z
    .registers 5

    .line 91
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 92
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->isAodActive()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_2c

    sget-wide v0, Lcom/android/systemui/doze/LunatikAodTransition;->lastAod:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2a

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/doze/LunatikAodTransition;->lastAod:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p0, v0, v2

    if-gez p0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    .line 94
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "charging animation suppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LunatikAod"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return p0
.end method

.method private static top(Landroid/view/View;Landroid/view/View;)I
    .registers 4

    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_1
    if-eq p0, p1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_11

    goto :goto_18

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_1

    .line 86
    :cond_18
    :goto_18
    return v0
.end method

.method private static updateClock()V
    .registers 5

    .line 99
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->clock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_23

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forceTimeUpdate"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1b

    .line 101
    goto :goto_23

    :catchall_1b
    move-exception v0

    const-string v1, "LunatikAod"

    const-string v2, "clock update failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 3

    .line 180
    sget-object p1, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    if-eq p1, p0, :cond_5

    return-void

    .line 181
    :cond_5
    iget p1, p0, Lcom/android/systemui/doze/LunatikAodTransition;->frames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/doze/LunatikAodTransition;->frames:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_16

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    .line 182
    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/doze/LunatikAodTransition;->finish()V

    .line 183
    return-void
.end method

.method public run()V
    .registers 4

    .line 169
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->pending:Lcom/android/systemui/doze/LunatikAodTransition;

    if-eq v0, p0, :cond_5

    return-void

    .line 170
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/doze/LunatikAodTransition;->awaitingFrame:Z

    if-nez v0, :cond_1e

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/LunatikAodTransition;->awaitingFrame:Z

    .line 172
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->updateClock()V

    .line 173
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 174
    sget-object v0, Lcom/android/systemui/doze/LunatikAodTransition;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void

    .line 177
    :cond_1e
    invoke-direct {p0}, Lcom/android/systemui/doze/LunatikAodTransition;->finish()V

    .line 178
    return-void
.end method
