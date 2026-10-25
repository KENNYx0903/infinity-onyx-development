.class public final Lcom/android/systemui/doze/PocketResume120;
.super Ljava/lang/Object;
.source "PocketResume120.java"


# static fields
.field private static final H:Landroid/os/Handler;

.field private static generation:I

.field private static initial:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/doze/PocketResume120;->H:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjust(Landroid/service/dreams/DreamService;I)I
    .registers 2

    .line 7
    const/4 p0, 0x3

    if-eq p1, p0, :cond_10

    const/4 p0, 0x4

    if-eq p1, p0, :cond_10

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/doze/PocketResume120;->initial:Z

    sget p0, Lcom/android/systemui/doze/PocketResume120;->generation:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/systemui/doze/PocketResume120;->generation:I

    return p1

    :cond_10
    sget-boolean p0, Lcom/android/systemui/doze/PocketResume120;->initial:Z

    if-eqz p0, :cond_15

    const/4 p1, 0x2

    :cond_15
    return p1
.end method

.method static alpha(F)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/android/systemui/doze/PocketResume120;->visual()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "handoffAlpha"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    invoke-static {}, Lcom/android/systemui/doze/PocketResume120;->visual()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Class;

    const-string v4, "invalidate"

    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static finish(I)V
    .registers 5

    .line 12
    const-string v0, "PocketResume120"

    sget v1, Lcom/android/systemui/doze/PocketResume120;->generation:I

    if-eq p0, v1, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/doze/PocketResume120;->initial:Z

    :try_start_a
    invoke-static {}, Lcom/android/systemui/doze/PocketResume120;->visual()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hiddenFrame"

    new-array v3, p0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Fade complete; normal 30Hz handoff"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception p0

    const-string v1, "Handoff"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method

.method public static isInitial()Z
    .registers 1

    .line 5
    sget-boolean v0, Lcom/android/systemui/doze/PocketResume120;->initial:Z

    return v0
.end method

.method static synthetic lambda$startVisual$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/doze/PocketResume120;->alpha(F)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string v0, "PocketResume120"

    const-string v1, "Fade"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method static synthetic lambda$startVisual$1(I)V
    .registers 4

    .line 11
    sget v0, Lcom/android/systemui/doze/PocketResume120;->generation:I

    if-ne p0, v0, :cond_33

    sget-boolean v0, Lcom/android/systemui/doze/PocketResume120;->initial:Z

    if-nez v0, :cond_9

    goto :goto_33

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_34

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/doze/PocketResume120$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/systemui/doze/PocketResume120$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/doze/PocketResume120$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/PocketResume120$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_33
    :goto_33
    return-void

    :array_34
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static resume()V
    .registers 2

    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/doze/PocketResume120;->initial:Z

    sget v1, Lcom/android/systemui/doze/PocketResume120;->generation:I

    add-int/2addr v1, v0

    sput v1, Lcom/android/systemui/doze/PocketResume120;->generation:I

    return-void
.end method

.method public static startVisual()V
    .registers 6

    .line 10
    const-string v0, "PocketResume120"

    sget v1, Lcom/android/systemui/doze/PocketResume120;->generation:I

    :try_start_4
    const-string v2, "com.android.systemui.doze.LunatikAodTransition"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "activeService"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "lunatikApplyScreenState"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/android/systemui/doze/PocketResume120;->alpha(F)V

    const-string v2, "Initial AOD shown for 2500ms"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_41} :catch_4e

    .line 11
    sget-object v0, Lcom/android/systemui/doze/PocketResume120;->H:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/doze/PocketResume120$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/systemui/doze/PocketResume120$$ExternalSyntheticLambda0;-><init>(I)V

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 10
    :catch_4e
    move-exception v2

    const-string v3, "Initial stage"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Lcom/android/systemui/doze/PocketResume120;->finish(I)V

    return-void
.end method

.method static visual()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    const-string v0, "com.android.systemui.doze.LunatikAodVisual"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
