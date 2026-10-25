.class public final Lcom/android/systemui/doze/LunatikAodVisual;
.super Ljava/lang/Object;
.source "LunatikAodVisual.java"


# static fields
.field private static final H:Landroid/os/Handler;

.field private static aod:Z

.field private static context:Landroid/content/Context;

.field private static drawLock:Landroid/os/PowerManager$WakeLock;

.field private static dx:F

.field private static dy:F

.field private static entryGeneration:I

.field private static entryLock:Landroid/os/PowerManager$WakeLock;

.field private static final handoff:Ljava/lang/Runnable;

.field private static handoffAlpha:F

.field private static handoffStart:J

.field private static final hide:Ljava/lang/Runnable;

.field private static final iconsChanged:Ljava/lang/Runnable;

.field private static largeClockId:I

.field private static final lift:Landroid/hardware/TriggerEventListener;

.field private static minute:J

.field private static motion:Landroid/animation/ValueAnimator;

.field private static panelReadySince:J

.field private static pickup:Landroid/hardware/Sensor;

.field private static pulsing:Z

.field private static registered:Z

.field private static reveal:Landroid/animation/ValueAnimator;

.field private static sensors:Landroid/hardware/SensorManager;

.field private static shownUntil:J

.field private static smallClockId:I

.field private static final views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->views:Ljava/util/ArrayList;

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F

    .line 24
    new-instance v0, Lcom/android/systemui/doze/LunatikAodVisual$1;

    invoke-direct {v0}, Lcom/android/systemui/doze/LunatikAodVisual$1;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->handoff:Ljava/lang/Runnable;

    .line 44
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/doze/LunatikAodVisual;->minute:J

    .line 45
    const/4 v0, -0x2

    sput v0, Lcom/android/systemui/doze/LunatikAodVisual;->largeClockId:I

    const/4 v0, -0x3

    sput v0, Lcom/android/systemui/doze/LunatikAodVisual;->smallClockId:I

    .line 49
    new-instance v0, Lcom/android/systemui/doze/LunatikAodVisual$2;

    invoke-direct {v0}, Lcom/android/systemui/doze/LunatikAodVisual$2;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->hide:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Lcom/android/systemui/doze/LunatikAodVisual$3;

    invoke-direct {v0}, Lcom/android/systemui/doze/LunatikAodVisual$3;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->lift:Landroid/hardware/TriggerEventListener;

    .line 56
    new-instance v0, Lcom/android/systemui/doze/LunatikAodVisual$4;

    invoke-direct {v0}, Lcom/android/systemui/doze/LunatikAodVisual$4;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->iconsChanged:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 10
    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    return v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(J)J
    .registers 2

    .line 10
    sput-wide p0, Lcom/android/systemui/doze/LunatikAodVisual;->shownUntil:J

    return-wide p0
.end method

.method static synthetic access$1100()Ljava/lang/Runnable;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->hide:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200()V
    .registers 0

    .line 10
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->arm()V

    return-void
.end method

.method static synthetic access$1300()V
    .registers 0

    .line 10
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->hiddenFrame()V

    return-void
.end method

.method static synthetic access$1400()I
    .registers 1

    .line 10
    sget v0, Lcom/android/systemui/doze/LunatikAodVisual;->entryGeneration:I

    return v0
.end method

.method static synthetic access$1500()Ljava/lang/Runnable;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->handoff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1602(F)F
    .registers 1

    .line 10
    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->dx:F

    return p0
.end method

.method static synthetic access$1702(F)F
    .registers 1

    .line 10
    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->dy:F

    return p0
.end method

.method static synthetic access$1800()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200()J
    .registers 2

    .line 10
    sget-wide v0, Lcom/android/systemui/doze/LunatikAodVisual;->panelReadySince:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .registers 2

    .line 10
    sput-wide p0, Lcom/android/systemui/doze/LunatikAodVisual;->panelReadySince:J

    return-wide p0
.end method

.method static synthetic access$300()J
    .registers 2

    .line 10
    sget-wide v0, Lcom/android/systemui/doze/LunatikAodVisual;->handoffStart:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .registers 2

    .line 10
    sput-wide p0, Lcom/android/systemui/doze/LunatikAodVisual;->handoffStart:J

    return-wide p0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600()Landroid/animation/ValueAnimator;
    .registers 1

    .line 10
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$602(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 10
    sput-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$700()F
    .registers 1

    .line 10
    sget v0, Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F

    return v0
.end method

.method static synthetic access$702(F)F
    .registers 1

    .line 10
    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F

    return p0
.end method

.method static synthetic access$800()V
    .registers 0

    .line 10
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->invalidate()V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .registers 1

    .line 10
    sput-boolean p0, Lcom/android/systemui/doze/LunatikAodVisual;->registered:Z

    return p0
.end method

.method private static arm()V
    .registers 3

    .line 138
    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->registered:Z

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->sensors:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->pickup:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->sensors:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/systemui/doze/LunatikAodVisual;->lift:Landroid/hardware/TriggerEventListener;

    sget-object v2, Lcom/android/systemui/doze/LunatikAodVisual;->pickup:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->registered:Z

    :cond_1c
    return-void
.end method

.method public static begin(Landroid/graphics/Canvas;Landroid/view/View;Z)I
    .registers 7

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 172
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->hideUnlockClock()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClockStyle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AODStyle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2a
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return v0

    .line 173
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationIconContainer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 174
    if-eqz v1, :cond_61

    :try_start_3f
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "aod_notification_icon_container"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_51} :catch_5f

    if-eqz v2, :cond_5e

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->hideUnlockClock()Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return v0

    :cond_5e
    return v0

    :catch_5f
    move-exception p0

    return v0

    .line 175
    :cond_61
    sget-boolean v2, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    if-eqz v2, :cond_77

    invoke-static {p0, p1}, Lcom/android/systemui/doze/LunatikAodVisual;->mask(Landroid/graphics/Canvas;Landroid/view/View;)V

    if-eqz p2, :cond_77

    if-eqz v1, :cond_70

    sget-boolean p1, Lcom/android/systemui/doze/LunatikAodVisual;->pulsing:Z

    if-nez p1, :cond_77

    :cond_70
    sget p1, Lcom/android/systemui/doze/LunatikAodVisual;->dx:F

    sget p2, Lcom/android/systemui/doze/LunatikAodVisual;->dy:F

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 176
    :cond_77
    return v0
.end method

.method public static beginClock(Landroid/graphics/Canvas;Landroid/view/View;)I
    .registers 9

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const-string v1, ""

    :try_start_6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_15

    :catch_13
    move-exception v2

    move-object v2, v1

    :goto_15
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->hideUnlockClock()Z

    move-result v3

    const-string v4, "keyguard_smartspace_view"

    const-string v5, "keyguard_slice_view"

    if-eqz v3, :cond_6a

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v6, Lcom/android/systemui/doze/LunatikAodVisual;->largeClockId:I

    if-eq v3, v6, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v6, Lcom/android/systemui/doze/LunatikAodVisual;->smallClockId:I

    if-eq v3, v6, :cond_65

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string/jumbo v3, "notification_stack_scroller"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string/jumbo v3, "notification_container_parent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "aod_notification_icon_container"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "date_smartspace_view"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "bc_smartspace_view"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_65
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return v0

    :cond_6a
    sget-boolean v2, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    if-nez v2, :cond_6f

    return v0

    .line 166
    :cond_6f
    :try_start_6f
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_7c

    goto :goto_7d

    :catch_7c
    move-exception v2

    .line 167
    :goto_7d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/android/systemui/doze/LunatikAodVisual;->largeClockId:I

    if-eq v2, v3, :cond_99

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/android/systemui/doze/LunatikAodVisual;->smallClockId:I

    if-eq v2, v3, :cond_99

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    :cond_99
    invoke-static {p0, p1}, Lcom/android/systemui/doze/LunatikAodVisual;->mask(Landroid/graphics/Canvas;Landroid/view/View;)V

    sget p1, Lcom/android/systemui/doze/LunatikAodVisual;->dx:F

    sget v1, Lcom/android/systemui/doze/LunatikAodVisual;->dy:F

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    :cond_a3
    return v0
.end method

.method private static hiddenFrame()V
    .registers 7

    .line 109
    sget v2, Lcom/android/systemui/doze/LunatikAodVisual;->entryGeneration:I

    .line 110
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v0, 0x0

    aput-boolean v0, v1, v0

    .line 111
    new-instance v5, Lcom/android/systemui/doze/LunatikAodVisual$7;

    invoke-direct {v5, v1, v2}, Lcom/android/systemui/doze/LunatikAodVisual$7;-><init>([ZI)V

    .line 117
    nop

    .line 118
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "KeyguardRootView"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_3a

    :cond_39
    const/4 v3, 0x0

    .line 119
    :goto_3a
    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {v3}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 120
    nop

    .line 121
    new-instance v4, Lcom/android/systemui/doze/LunatikAodVisual$8;

    invoke-direct {v4, v2, v5}, Lcom/android/systemui/doze/LunatikAodVisual$8;-><init>(ILjava/lang/Runnable;)V

    .line 125
    :try_start_4e
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->registerFrameCommitCallback(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 127
    sget-object v6, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/doze/LunatikAodVisual$9;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/LunatikAodVisual$9;-><init>([ZILandroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xf0

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_64} :catch_65

    .line 133
    return-void

    .line 134
    :catch_65
    move-exception v0

    const-string v1, "LunatikAodVisual"

    const-string v2, "hidden frame callback unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_6d
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    return-void
.end method

.method public static hideFingerprint()Z
    .registers 4

    .line 163
    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/doze/LunatikAodVisual;->shownUntil:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static iconAlpha(F)F
    .registers 2

    .line 162
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->hideFingerprint()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return p0
.end method

.method private static invalidate()V
    .registers 5

    .line 157
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_5d

    sget-object v1, Lcom/android/systemui/doze/LunatikAodVisual;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_20

    sget-object v1, Lcom/android/systemui/doze/LunatikAodVisual;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5a

    .line 158
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardRootView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3d

    sget-boolean v2, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    if-eqz v2, :cond_39

    sget v2, Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F

    goto :goto_3a

    :cond_39
    move v2, v3

    :goto_3a
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 159
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DeviceEntryIconView"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->hideFingerprint()Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v3, 0x0

    :cond_54
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 160
    :cond_57
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 157
    :goto_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 161
    :cond_5d
    return-void
.end method

.method private static mask(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 2

    .line 42
    return-void
.end method

.method private static node(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/class/mi_display/disp-DSI-0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_29

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :catchall_29
    move-exception p0

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p0
.end method

.method public static notificationsChanged(Landroid/view/View;)V
    .registers 2

    .line 58
    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    if-nez v0, :cond_5

    return-void

    .line 59
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "aod_notification_icon_container"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_29

    if-nez p0, :cond_1a

    return-void

    .line 60
    :cond_1a
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->iconsChanged:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->iconsChanged:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void

    .line 59
    :catch_29
    move-exception p0

    return-void
.end method

.method public static pulse(Z)V
    .registers 1

    .line 66
    sput-boolean p0, Lcom/android/systemui/doze/LunatikAodVisual;->pulsing:Z

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->invalidate()V

    return-void
.end method

.method public static register(Landroid/view/View;)V
    .registers 5

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 69
    sget-object v1, Lcom/android/systemui/doze/LunatikAodVisual;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_a

    return-void

    .line 70
    :cond_1d
    sget-object v1, Lcom/android/systemui/doze/LunatikAodVisual;->views:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/android/systemui/doze/LunatikAodVisual;->context:Landroid/content/Context;

    if-eqz v1, :cond_2c

    return-void

    .line 72
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->context:Landroid/content/Context;

    .line 74
    :try_start_32
    const-string p0, "com.android.systemui.plugins.keyguard.ui.clocks.ClockViewIds"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 75
    const-string v1, "INSTANCE"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    const-string v2, "getLOCKSCREEN_CLOCK_VIEW_LARGE"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/systemui/doze/LunatikAodVisual;->largeClockId:I

    .line 77
    const-string v2, "getLOCKSCREEN_CLOCK_VIEW_SMALL"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->smallClockId:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6f} :catch_70

    .line 78
    goto :goto_74

    :catch_70
    move-exception p0

    const/4 p0, -0x4

    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->largeClockId:I

    .line 79
    :goto_74
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    sput-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->sensors:Landroid/hardware/SensorManager;

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->sensors:Landroid/hardware/SensorManager;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->pickup:Landroid/hardware/Sensor;

    .line 80
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->context:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v1, "LunatikAod:motion"

    invoke-virtual {p0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 82
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->context:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v1, "LunatikAod:entry-handoff"

    invoke-virtual {p0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 83
    return-void
.end method

.method public static registerNotifications(Landroid/view/View;)V
    .registers 3

    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_notification_icon_container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_19

    if-nez v0, :cond_15

    return-void

    .line 64
    :cond_15
    invoke-static {p0}, Lcom/android/systemui/doze/LunatikAodVisual;->register(Landroid/view/View;)V

    .line 65
    return-void

    .line 63
    :catch_19
    move-exception p0

    return-void
.end method

.method public static state(Z)V
    .registers 7

    .line 85
    const/4 v0, 0x0

    if-nez p0, :cond_5

    sput-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->pulsing:Z

    .line 86
    :cond_5
    sget-boolean v1, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    if-ne v1, p0, :cond_a

    return-void

    :cond_a
    sput-boolean p0, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    sget p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryGeneration:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryGeneration:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/systemui/doze/LunatikAodVisual;->shownUntil:J

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/doze/LunatikAodVisual;->hide:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    if-eqz p0, :cond_29

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    sput-object v3, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    .line 88
    :cond_29
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_3a

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-eqz p0, :cond_3a

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    :cond_3a
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/android/systemui/doze/LunatikAodVisual;->minute:J

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    sget-object v4, Lcom/android/systemui/doze/LunatikAodVisual;->handoff:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->H:Landroid/os/Handler;

    sget-object v4, Lcom/android/systemui/doze/LunatikAodVisual;->iconsChanged:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_57

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    sput-object v3, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    .line 91
    :cond_57
    const/high16 p0, 0x3f800000    # 1.0f

    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F

    .line 92
    sget-boolean p0, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    const/4 v3, 0x0

    if-eqz p0, :cond_c7

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/doze/LunatikAodVisual;->handoffStart:J

    sput-wide v1, Lcom/android/systemui/doze/LunatikAodVisual;->panelReadySince:J

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_73

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x708

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 94
    :cond_73
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodPocket;->consumeResume()Z

    move-result p0

    if-eqz p0, :cond_8a

    .line 96
    const/high16 p0, 0x3f800000    # 1.0f

    sput p0, Lcom/android/systemui/doze/LunatikAodVisual;->handoffAlpha:F

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->invalidate()V

    invoke-static {}, Lcom/android/systemui/doze/PocketResume120;->startVisual()V

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->tick()V

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->arm()V

    return-void

    .line 98
    :cond_8a
    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_f4

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 99
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/doze/LunatikAodVisual$5;

    invoke-direct {v0}, Lcom/android/systemui/doze/LunatikAodVisual$5;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 101
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/doze/LunatikAodVisual$6;

    invoke-direct {v0}, Lcom/android/systemui/doze/LunatikAodVisual$6;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->reveal:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->tick()V

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->arm()V

    goto :goto_f2

    .line 104
    :cond_c7
    sget-boolean p0, Lcom/android/systemui/doze/LunatikAodVisual;->registered:Z

    if-eqz p0, :cond_d8

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->sensors:Landroid/hardware/SensorManager;

    if-eqz p0, :cond_d8

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->sensors:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/systemui/doze/LunatikAodVisual;->lift:Landroid/hardware/TriggerEventListener;

    sget-object v2, Lcom/android/systemui/doze/LunatikAodVisual;->pickup:Landroid/hardware/Sensor;

    invoke-virtual {p0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 105
    :cond_d8
    sput-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->registered:Z

    sput v3, Lcom/android/systemui/doze/LunatikAodVisual;->dy:F

    sput v3, Lcom/android/systemui/doze/LunatikAodVisual;->dx:F

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_ef

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-eqz p0, :cond_ef

    sget-object p0, Lcom/android/systemui/doze/LunatikAodVisual;->entryLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_ef
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->invalidate()V

    .line 107
    :goto_f2
    return-void

    nop

    :array_f4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static tick()V
    .registers 8

    .line 140
    sget-boolean v0, Lcom/android/systemui/doze/LunatikAodVisual;->aod:Z

    if-nez v0, :cond_5

    return-void

    .line 141
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    sget-wide v2, Lcom/android/systemui/doze/LunatikAodVisual;->minute:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    return-void

    .line 142
    :cond_14
    const-wide/16 v2, 0x7

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x11

    rem-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    const-wide/16 v6, 0xb

    mul-long/2addr v6, v0

    rem-long/2addr v6, v4

    long-to-int v3, v6

    add-int/lit8 v3, v3, -0x8

    int-to-float v3, v3

    .line 143
    sget-wide v4, Lcom/android/systemui/doze/LunatikAodVisual;->minute:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_30

    const/4 v4, 0x1

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    sput-wide v0, Lcom/android/systemui/doze/LunatikAodVisual;->minute:J

    .line 144
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 145
    :cond_3c
    if-eqz v4, :cond_47

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/doze/LunatikAodVisual;->dy:F

    sput v0, Lcom/android/systemui/doze/LunatikAodVisual;->dx:F

    invoke-static {}, Lcom/android/systemui/doze/LunatikAodVisual;->invalidate()V

    return-void

    .line 146
    :cond_47
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_52

    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->drawLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 147
    :cond_52
    invoke-static {}, Lcom/android/systemui/doze/LunatikAodTransition;->motionWindow()V

    .line 148
    sget v0, Lcom/android/systemui/doze/LunatikAodVisual;->dx:F

    sget v1, Lcom/android/systemui/doze/LunatikAodVisual;->dy:F

    .line 149
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_b4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x2ee

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    sget-object v4, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    sget-object v4, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/doze/LunatikAodVisual$10;

    invoke-direct {v5, v0, v2, v1, v3}, Lcom/android/systemui/doze/LunatikAodVisual$10;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 154
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/doze/LunatikAodVisual$11;

    invoke-direct {v1}, Lcom/android/systemui/doze/LunatikAodVisual$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    sget-object v0, Lcom/android/systemui/doze/LunatikAodVisual;->motion:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smooth burn-in target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LunatikAodVisual"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    nop

    :array_b4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
