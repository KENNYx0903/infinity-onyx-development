.class public final Lcom/android/wm/shell/windowdecor/EdgeFreeform;
.super Ljava/lang/Object;
.source "EdgeFreeform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;
    }
.end annotation


# static fields
.field static final roots:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;",
            ">;"
        }
    .end annotation
.end field

.field static final states:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->states:Ljava/util/WeakHashMap;

    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->roots:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static animate(Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;Landroid/graphics/Rect;Z)V
    .registers 7

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-eqz p2, :cond_b

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideShown:Z

    goto :goto_d

    :cond_b
    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomShown:Z

    :goto_d
    if-eqz p2, :cond_12

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->side:Landroid/graphics/Rect;

    goto :goto_14

    :cond_12
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottom:Landroid/graphics/Rect;

    :goto_14
    if-nez v0, :cond_19

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_19
    if-ne v1, v2, :cond_1c

    return-void

    .line 32
    :cond_1c
    if-eqz p2, :cond_21

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideShown:Z

    goto :goto_23

    :cond_21
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomShown:Z

    :goto_23
    if-eqz p2, :cond_28

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAnim:Landroid/animation/ValueAnimator;

    goto :goto_2a

    :cond_28
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAnim:Landroid/animation/ValueAnimator;

    :goto_2a
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33
    :cond_2f
    if-eqz p2, :cond_34

    iget p1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAlpha:F

    goto :goto_36

    :cond_34
    iget p1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAlpha:F

    :goto_36
    if-nez v0, :cond_3b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform$$ExternalSyntheticLambda0;-><init>(ZLcom/android/wm/shell/windowdecor/EdgeFreeform$State;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_63

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAnim:Landroid/animation/ValueAnimator;

    goto :goto_65

    :cond_63
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAnim:Landroid/animation/ValueAnimator;

    :goto_65
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 34
    return-void
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static clamp(Ljava/lang/Object;)V
    .registers 10

    .line 11
    const-string v0, "mPosY"

    const-string v1, "mPosX"

    :try_start_4
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->decor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    return-void

    :cond_f
    const-string v3, "mScale"

    invoke-static {p0, v3}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v3

    const-string v4, "mLogicalW"

    invoke-static {p0, v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const-string v5, "mLogicalH"

    invoke-static {p0, v5}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const-string v6, "getStableBounds"

    const-class v7, Landroid/graphics/Rect;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mDensityDpi"

    invoke-static {v2, v6}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x15

    int-to-float v6, v6

    const/high16 v7, 0x43200000    # 160.0f

    div-float/2addr v6, v7

    neg-float v4, v4

    add-float/2addr v4, v6

    const-string v7, "mWidth"

    invoke-static {v2, v7}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V

    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    add-float/2addr v1, v6

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->set(Ljava/lang/Object;Ljava/lang/String;F)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_76} :catch_77

    goto :goto_7f

    :catch_77
    move-exception p0

    const-string v0, "EdgeFreeform"

    const-string v1, "clamp"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7f
    return-void
.end method

.method public static commitNative(Ljava/lang/Object;)V
    .registers 8

    .line 10
    :try_start_0
    const-string v0, "mCtrlType"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->decor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->initialScale(Ljava/lang/Object;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_ca

    const-string v1, "mScale"

    invoke-static {p0, v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2f

    goto/16 :goto_ca

    :cond_2f
    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "configuration"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    const-string v2, "windowConfiguration"

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getBounds"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v5}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    const-string v2, "mPosX"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const-string v4, "mPosY"

    invoke-static {p0, v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, p0

    invoke-direct {v4, v2, p0, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_78

    return-void

    :cond_78
    const-string p0, "android.window.WindowContainerTransaction"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "setBounds"

    const-string v2, "android.window.WindowContainerToken"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/graphics/Rect;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "token"

    invoke-static {v3, v5}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.android.wm.shell.windowdecor.LunatikFreeform"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "apply"

    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c9} :catch_cb

    goto :goto_d3

    :cond_ca
    :goto_ca
    return-void

    :catch_cb
    move-exception p0

    const-string v0, "EdgeFreeform"

    const-string v1, "commit native bounds"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d3
    return-void
.end method

.method static decor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    const-string v0, "mWindowDecoration"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "captionWindowDecoration"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static densityFactor(Ljava/lang/Object;)F
    .registers 2

    .line 9
    :try_start_0
    const-string v0, "topActivity"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    if-eqz p0, :cond_1a

    const-string v0, "com.google.android.youtube"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_19

    if-eqz p0, :cond_1a

    const/high16 p0, 0x3f400000    # 0.75f

    return p0

    :catch_19
    move-exception p0

    :cond_1a
    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public static destroy(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 37
    const-string p0, "taskId"

    :try_start_2
    invoke-static {p1, p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    sget-object v0, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-static {v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_10

    :cond_2e
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAnim:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_37

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_37
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAnim:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_40

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_40
    sget-object v2, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->roots:Ljava/util/WeakHashMap;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->root:Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_4b

    goto :goto_10

    :catch_4b
    move-exception p0

    :cond_4c
    return-void
.end method

.method public static draw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 4

    .line 28
    sget-object v0, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->roots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;

    if-nez p0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->side:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->panel(Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottom:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->panel(Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static f(Ljava/lang/Object;Ljava/lang/String;)F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_15

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_4

    :cond_15
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static i(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static initialScale(Ljava/lang/Object;)F
    .registers 2

    .line 8
    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->densityFactor(Ljava/lang/Object;)F

    move-result p0

    const v0, 0x3f666666    # 0.9f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_e

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_11

    :cond_e
    const p0, 0x3f333333    # 0.7f

    :goto_11
    return p0
.end method

.method static synthetic lambda$animate$0(ZLcom/android/wm/shell/windowdecor/EdgeFreeform$State;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 33
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p0, :cond_f

    iput p2, p1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAlpha:F

    goto :goto_11

    :cond_f
    iput p2, p1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAlpha:F

    :goto_11
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->root:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static layout(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    const-string v0, "mDisplayController"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "displayId"

    invoke-static {p0, v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getDisplayLayout"

    invoke-static {v0, v2, v1, p0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static panel(Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .registers 12

    .line 29
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAlpha:F

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAlpha:F

    :goto_7
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8e

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_14

    goto/16 :goto_8e

    :cond_14
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result p1

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->root:Landroid/view/View;

    const v0, 0x7f0b03a8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_4b

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_4b
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p2

    invoke-virtual {v2, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz p3, :cond_72

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_72
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, p3

    invoke-virtual {v2, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method static set(Ljava/lang/Object;Ljava/lang/String;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    return-void
.end method

.method static task(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    const-string v0, "mTaskInfo"

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static touch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    .line 35
    sget-object v0, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->roots:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 35
    if-nez p0, :cond_10

    return v0

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_48

    iget-boolean v4, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideShown:Z

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->side:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_44

    :cond_2d
    iget-boolean v4, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomShown:Z

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottom:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_47

    :cond_44
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->dragging:Z

    goto :goto_48

    :cond_47
    :goto_47
    return v0

    :cond_48
    :goto_48
    iget-boolean v4, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->dragging:Z

    if-nez v4, :cond_4d

    return v0

    .line 36
    :cond_4d
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_56

    return v0

    :cond_56
    :try_start_56
    const-string v5, "mDragPositioningCallback"

    invoke-static {v4, v5}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_86

    const-string v2, "onDragPositioningStart"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v6, v7, v8, v9}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v6, v1, p1, v1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, v2, v4, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_da

    :cond_86
    const/4 v6, 0x2

    if-ne v2, v6, :cond_ad

    const-string v2, "onDragPositioningMove"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v6, v7}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v6, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, v2, v4, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_da

    :cond_ad
    if-eq v2, v3, :cond_b2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_da

    :cond_b2
    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->dragging:Z

    const-string v2, "onDragPositioningEnd"

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v7, v8}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v7, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, v2, v6, p1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->update(Ljava/lang/Object;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_da} :catch_db

    :cond_da
    :goto_da
    return v3

    :catch_db
    move-exception p1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->dragging:Z

    const-string p0, "EdgeFreeform"

    const-string v1, "embedded drag"

    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static update(Ljava/lang/Object;)V
    .registers 19

    .line 15
    move-object/from16 v0, p0

    const-string v1, "lunatikTouchableRegion"

    :try_start_4
    const-string v2, "mResult"

    invoke-static {v0, v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mRootView"

    invoke-static {v2, v3}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_15

    return-void

    .line 16
    :cond_15
    sget-object v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;

    if-eqz v3, :cond_23

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->root:Landroid/view/View;

    if-eq v4, v2, :cond_4d

    :cond_23
    if-eqz v3, :cond_3e

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAnim:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_2e

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2e
    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAnim:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_37

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_37
    sget-object v4, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->roots:Ljava/util/WeakHashMap;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->root:Landroid/view/View;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    new-instance v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;

    invoke-direct {v3, v0, v2}, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;-><init>(Ljava/lang/Object;Landroid/view/View;)V

    sget-object v4, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->roots:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_4d
    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->task(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->layout(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "mVisualScale"

    invoke-static {v0, v6}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v6

    const-string v7, "mVisualPosX"

    invoke-static {v0, v7}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v7

    const-string v8, "mVisualPosY"

    invoke-static {v0, v8}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->f(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v10, v6, v9

    if-gtz v10, :cond_6d

    return-void

    .line 18
    :cond_6d
    const-string v10, "configuration"

    invoke-static {v4, v10}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/Configuration;

    const-string v11, "windowConfiguration"

    invoke-static {v10, v11}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "getBounds"

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Class;

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v13, v14}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    const-string v13, "constantChromePx"

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v14}, [Ljava/lang/Class;

    move-result-object v14

    const v15, 0x7f0703b4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v0, v13, v14, v15}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    const-string v15, "getStableBounds"

    const-class v16, Landroid/graphics/Rect;

    move/from16 v17, v9

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Class;

    move-result-object v9

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v5, v15, v9, v12}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    int-to-float v13, v13

    const v15, 0x3f4ccccd    # 0.8f

    mul-float/2addr v13, v15

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 20
    const-string v15, "isVisible"

    invoke-static {v4, v15}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12b

    const-string v4, "mIsBubbleMode"

    invoke-static {v0, v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_12b

    .line 21
    cmpg-float v4, v7, v17

    if-gez v4, :cond_fd

    sub-int v4, v11, v13

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5, v11, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_10f

    :cond_fd
    int-to-float v4, v11

    mul-float/2addr v4, v6

    add-float/2addr v7, v4

    const-string v4, "mWidth"

    invoke-static {v5, v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v7, v4

    if-lez v4, :cond_10f

    const/4 v5, 0x0

    invoke-virtual {v9, v5, v5, v13, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    :cond_10f
    :goto_10f
    iget v4, v14, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v4, v8, v4

    if-gez v4, :cond_11d

    sub-int v4, v10, v13

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v4, v11, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_12b

    :cond_11d
    int-to-float v4, v10

    mul-float/2addr v4, v6

    add-float/2addr v8, v4

    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v4, v8, v4

    if-lez v4, :cond_12b

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v5, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 24
    :cond_12b
    :goto_12b
    const/4 v4, 0x1

    invoke-static {v3, v9, v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->animate(Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;Landroid/graphics/Rect;Z)V

    const/4 v5, 0x0

    invoke-static {v3, v12, v5}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->animate(Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;Landroid/graphics/Rect;Z)V

    .line 25
    const-string v4, "mViewHost"

    invoke-static {v0, v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "viewHostAdapter"

    invoke-static {v0, v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Region;

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->adapter:Ljava/lang/Object;

    if-ne v0, v5, :cond_155

    iget v5, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->w:I

    if-ne v11, v5, :cond_155

    iget v5, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->h:I

    if-ne v10, v5, :cond_155

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->base:Landroid/graphics/Region;

    if-nez v5, :cond_16b

    :cond_155
    if-nez v4, :cond_15d

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    goto :goto_163

    :cond_15d
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    move-object v4, v5

    :goto_163
    iput-object v4, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->base:Landroid/graphics/Region;

    iput-object v0, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->adapter:Ljava/lang/Object;

    iput v11, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->w:I

    iput v10, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->h:I

    .line 26
    :cond_16b
    new-instance v4, Landroid/graphics/Region;

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->base:Landroid/graphics/Region;

    invoke-direct {v4, v5}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iget-boolean v5, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->sideShown:Z

    if-eqz v5, :cond_17d

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->side:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_17d
    iget-boolean v5, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottomShown:Z

    if-eqz v5, :cond_188

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/EdgeFreeform$State;->bottom:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_188
    invoke-static {v0, v1}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "lunatikApplyInputRegion"

    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Class;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v4}, Lcom/android/wm/shell/windowdecor/EdgeFreeform;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19c} :catch_19d

    .line 27
    goto :goto_1a5

    :catch_19d
    move-exception v0

    const-string v1, "EdgeFreeform"

    const-string v2, "embedded update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a5
    return-void
.end method
