.class public final Lcom/android/systemui/statusbar/notification/row/NotificationGlass;
.super Ljava/lang/Object;
.source "NotificationGlass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;
    }
.end annotation


# static fields
.field static blur:Z

.field static final contentAlpha:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static contentEffect:Landroid/graphics/RenderEffect;

.field static contentFraction:F

.field static final contentGuard:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field static context:Landroid/content/Context;

.field static dark:I

.field static effectFraction:F

.field static enabled:Z

.field static guardedGuts:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field static gutsOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static radius:I

.field static final rippleColors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/drawable/RippleDrawable;",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field static transitionGeneration:I

.field static final views:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static volumeAlphaState:Ljava/lang/Object;

.field static volumeAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field static final volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

.field static volumeOpacity:F

.field static final volumeRoots:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->rippleColors:Ljava/util/WeakHashMap;

    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->views:Ljava/util/WeakHashMap;

    .line 9
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentAlpha:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->gutsOwner:Ljava/lang/ref/WeakReference;

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->effectFraction:F

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->guardedGuts:Ljava/lang/ref/WeakReference;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentGuard:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeOpacity:F

    .line 23
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeAnchor:Ljava/lang/ref/WeakReference;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeRoots:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Ljava/lang/Object;Landroid/animation/Animator;Z)V
    .registers 5

    .line 15
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->init(Landroid/view/View;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    if-nez v0, :cond_14

    goto :goto_22

    :cond_14
    sget v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->transitionGeneration:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->transitionGeneration:I

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;

    invoke-direct {v1, v0, p1, p2, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$2;-><init>(ILandroid/animation/Animator;ZLjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_22
    :goto_22
    return-void
.end method

.method static applyContent(F)V
    .registers 4

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sput p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentFraction:F

    sget p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->effectFraction:F

    sget v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentFraction:F

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_47

    sget p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentFraction:F

    sput p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->effectFraction:F

    sget p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentFraction:F

    const v0, 0x3b03126f    # 0.002f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_44

    sget p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentFraction:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr p0, v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sget v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentFraction:F

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p0, v0, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    goto :goto_45

    :cond_44
    const/4 p0, 0x0

    :goto_45
    sput-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentEffect:Landroid/graphics/RenderEffect;

    :cond_47
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enforceContent()V

    return-void
.end method

.method public static button2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 36
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->composeButton(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static button3(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 37
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->composeButton(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static button4(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 38
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->composeButton(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static button5(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 39
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->composeButton(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static clearButtonColor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 34
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    if-eqz v0, :cond_4d

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    if-nez v0, :cond_9

    goto :goto_4d

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "contentColor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v1

    const-string v3, "disabledContentColor"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v7, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4b} :catch_4c

    return-object p0

    :catch_4c
    move-exception v0

    :cond_4d
    :goto_4d
    return-object p0
.end method

.method public static composeButton(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    .line 33
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "containerColor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    const/high16 p1, 0x447a0000    # 1000.0f

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->composeVolumeSlot(Ljava/lang/Object;JFI)Ljava/lang/Object;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p1

    return-object p0
.end method

.method public static composeExpanded(Ljava/lang/Object;JF)Ljava/lang/Object;
    .registers 5

    .line 31
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->composeVolumeSlot(Ljava/lang/Object;JFI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static composeVolume(Ljava/lang/Object;JF)Ljava/lang/Object;
    .registers 5

    .line 30
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->composeVolumeSlot(Ljava/lang/Object;JFI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static composeVolumeSlot(Ljava/lang/Object;JFI)Ljava/lang/Object;
    .registers 15

    .line 32
    :try_start_0
    const-string v0, "androidx.compose.ui.Modifier"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "kotlin.jvm.functions.Function1"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v8, v2, [Z

    const/4 v2, 0x0

    aput-boolean v2, v8, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v9

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;

    move-wide v5, p1

    move v7, p3

    move v4, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda1;-><init>(IJF[Z)V

    invoke-static {v2, v9, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "androidx.compose.ui.draw.DrawModifierKt"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string p3, "drawBehind"

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    return-object p0

    :catch_40
    move-exception v0

    move-object p1, v0

    const-string p2, "NotificationGlass"

    const-string p3, "Compose volume modifier"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public static draw(Ljava/lang/Object;)V
    .registers 9

    .line 17
    const-string v0, "NotificationGlass"

    :try_start_2
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->init(Landroid/view/View;)V

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->views:Ljava/util/WeakHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "mBackground"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_35

    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    if-nez v5, :cond_35

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;-><init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_35
    instance-of v2, v4, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_3a

    return-void

    :cond_3a
    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    if-nez v4, :cond_3f

    return-void

    :cond_3f
    instance-of v2, v4, Landroid/graphics/drawable/RippleDrawable;

    const/4 v5, 0x0

    if-eqz v2, :cond_89

    move-object v2, v4

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->rippleColors:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_71

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mRippleColor"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->rippleColors:Ljava/util/WeakHashMap;

    if-nez p0, :cond_66

    const/high16 p0, 0x33000000

    goto :goto_6a

    :cond_66
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_6a
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v6, v2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    sget-boolean p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    if-eqz p0, :cond_7e

    sget-boolean p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    if-eqz p0, :cond_7e

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_86

    :cond_7e
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->rippleColors:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ColorStateList;

    :goto_86
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_89
    invoke-virtual {v4}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p0

    if-le p0, v3, :cond_a2

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-boolean v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    if-eqz v2, :cond_9d

    sget-boolean v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    if-eqz v2, :cond_9d

    move v2, v5

    goto :goto_9f

    :cond_9d
    const/16 v2, 0xff

    :goto_9f
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a2
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    if-nez v2, :cond_c4

    instance-of v2, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_c4

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;-><init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    const-string p0, "Native blur material attached"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bd} :catch_be

    goto :goto_c4

    :catch_be
    move-exception p0

    const-string v1, "Attach"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c4
    :goto_c4
    return-void
.end method

.method static enforceContent()V
    .registers 5

    .line 11
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentAlpha:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_1f

    :cond_1e
    :goto_1e
    goto :goto_a

    :cond_1f
    sget-object v3, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentEffect:Landroid/graphics/RenderEffect;

    invoke-virtual {v2, v3}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v3, 0x3f59999a    # 0.85f

    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentFraction:F

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1e

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1e

    :cond_4c
    return-void
.end method

.method public static fingerprint(Ljava/lang/Object;)V
    .registers 6

    .line 40
    const-string v0, "NotificationGlass"

    :try_start_2
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->init(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "bgView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    if-eqz v2, :cond_21

    return-void

    :cond_21
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_55

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;-><init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->lockOnly:Z

    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->corners:[F

    const v4, 0x461c4000    # 10000.0f

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->views:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Lockscreen fingerprint material attached"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception p0

    const-string v1, "Fingerprint material"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_55
    :goto_55
    return-void
.end method

.method static init(Landroid/view/View;)V
    .registers 6

    .line 8
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->read()V

    new-instance p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$1;-><init>(Landroid/os/Handler;)V

    const-string v0, "lunatik_blur_radius"

    const-string v1, "lunatik_blur_darkness"

    const-string v2, "lunatik_blur_mode"

    const-string v3, "lunatik_notification_glass"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    const/4 v3, 0x4

    if-ge v2, v3, :cond_43

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_43
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "disable_window_blurs"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic lambda$composeVolumeSlot$2(IJF[ZLjava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    const-string v1, "NotificationGlass"

    invoke-virtual/range {p6 .. p6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invoke"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_41

    invoke-virtual/range {p6 .. p6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_24
    invoke-virtual/range {p6 .. p6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    aget-object v0, p7, v3

    move-object/from16 v1, p5

    if-ne v1, v0, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    move v2, v3

    :goto_39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3e
    const-string v0, "VolumeBlurDraw"

    return-object v0

    :cond_41
    :try_start_41
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    aget-object v4, p7, v3

    if-eqz v0, :cond_213

    sget-object v5, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeAlphaState:Ljava/lang/Object;

    if-eqz v5, :cond_7a

    const-string v5, "androidx.compose.runtime.State"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getValue"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeAlphaState:Ljava/lang/Object;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sput v5, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeOpacity:F

    :cond_7a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDrawContext"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getSize-NH-jbRc"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/16 v7, 0x20

    shr-long v8, v5, v7

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "getCanvas"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "internalCanvas"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Canvas;

    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    aget-object v6, v6, p0

    if-nez v6, :cond_f6

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    shr-long v9, p1, v7

    long-to-int v7, v9

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget-object v7, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    new-instance v9, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    invoke-direct {v9, v0, v6, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;-><init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Z)V

    aput-object v9, v7, p0

    :cond_f6
    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    aget-object v6, v6, p0

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v10, p3

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float v11, v11, p3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-float v12, v12, p3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    mul-float v13, v13, p3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v9

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float v14, v14, p3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v9

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float v15, v15, p3

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v9

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_18a} :catch_205

    const/16 v17, 0x1

    :try_start_18c
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, p3

    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v9

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p3

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/16 v9, 0x8

    new-array v9, v9, [F

    aput v7, v9, v3

    aput v10, v9, v17

    const/4 v7, 0x2

    aput v11, v9, v7

    const/4 v7, 0x3

    aput v12, v9, v7

    const/4 v7, 0x4

    aput v13, v9, v7

    const/4 v7, 0x5

    aput v14, v9, v7

    const/4 v7, 0x6

    aput v2, v9, v7

    const/4 v2, 0x7

    aput v0, v9, v2

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->setCornerRadii([F)V

    sget v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeOpacity:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v6, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->opacity:I

    invoke-virtual {v6, v3, v3, v8, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->setBounds(IIII)V

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->draw(Landroid/graphics/Canvas;)V

    aget-boolean v0, p4, v3

    if-nez v0, :cond_213

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compose volume material drawn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aput-boolean v17, p4, v3
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_202} :catch_203

    goto :goto_213

    :catch_203
    move-exception v0

    goto :goto_208

    :catch_205
    move-exception v0

    const/16 v17, 0x1

    :goto_208
    aget-boolean v2, p4, v3

    if-nez v2, :cond_213

    const-string v2, "Compose volume draw"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aput-boolean v17, p4, v3

    :cond_213
    :goto_213
    const-string v0, "kotlin.Unit"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0()Z
    .registers 1

    .line 10
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enforceContent()V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$volume$1(Landroid/view/View;)V
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeTree(Landroid/view/View;)V

    return-void
.end method

.method static prepareContents(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->init(Landroid/view/View;)V

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->gutsOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_f

    return-void

    :cond_f
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->unguard()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->applyContent(F)V

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentAlpha:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->gutsOwner:Ljava/lang/ref/WeakReference;

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->guardedGuts:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentGuard:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_6e

    const-string v0, "mPublicLayout"

    const-string v1, "mChildrenContainer"

    const-string v2, "mPrivateLayout"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_43
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6e

    aget-object v2, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6b

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentAlpha:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_6e
    return-void
.end method

.method static prime(Ljava/lang/Object;)V
    .registers 3

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mBackground"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1b

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_1b
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    if-eqz v0, :cond_2d

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->ensureMaterial()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_2d

    :catch_25
    move-exception p0

    const-string v0, "NotificationGlass"

    const-string v1, "Prime"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    return-void
.end method

.method static read()V
    .registers 5

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lunatik_notification_glass"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    const/4 v1, 0x2

    :goto_19
    const-string v4, "lunatik_blur_mode"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_24

    move v0, v3

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "disable_window_blurs"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_36

    goto :goto_37

    :cond_36
    move v3, v1

    :goto_37
    sput-boolean v3, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lunatik_blur_radius"

    const/16 v3, 0x3c

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x96

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->radius:I

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lunatik_blur_darkness"

    const/16 v3, 0x2b

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->dark:I

    return-void
.end method

.method public static segmentColors(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    .line 35
    sget-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->enabled:Z

    if-eqz v0, :cond_5e

    sget-boolean v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->blur:Z

    if-nez v0, :cond_9

    goto :goto_5e

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "activeContainerColor"

    const-string v2, "activeContentColor"

    const-string v3, "activeBorderColor"

    const-string v4, "inactiveContainerColor"

    const-string v5, "inactiveContentColor"

    const-string v6, "inactiveBorderColor"

    const-string v7, "disabledActiveContainerColor"

    const-string v8, "disabledActiveContentColor"

    const-string v9, "disabledActiveBorderColor"

    const-string v10, "disabledInactiveContainerColor"

    const-string v11, "disabledInactiveContentColor"

    const-string v12, "disabledInactiveBorderColor"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v2, :cond_54

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_49

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3e

    goto :goto_49

    :cond_3e
    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v6

    goto :goto_4b

    :cond_49
    :goto_49
    const-wide/16 v6, 0x0

    :goto_4b
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_54
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5c} :catch_5d

    return-object p0

    :catch_5d
    move-exception v0

    :cond_5e
    :goto_5e
    return-object p0
.end method

.method static unguard()V
    .registers 2

    .line 12
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->guardedGuts:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->contentGuard:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1d
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->guardedGuts:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public static volume(Ljava/lang/Object;)V
    .registers 5

    .line 27
    const-string v0, "NotificationGlass"

    :try_start_2
    move-object v1, p0

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->init(Landroid/view/View;)V

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1b

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeClosed()V

    :cond_1b
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeAnchor:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeTree(Landroid/view/View;)V

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeRoots:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeRoots:Ljava/util/WeakHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume material attached to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-exception p0

    const-string v1, "Volume material"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    return-void
.end method

.method public static volumeAlpha(F)V
    .registers 6

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sput p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeOpacity:F

    sget-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_28

    aget-object v2, p0, v1

    if-eqz v2, :cond_25

    const/high16 v3, 0x437f0000    # 255.0f

    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeOpacity:F

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->opacity:I

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->syncRegion()V

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_28
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_35
    return-void
.end method

.method public static volumeClosed()V
    .registers 4

    .line 24
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    array-length v2, v2

    if-ge v1, v2, :cond_1e

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    aget-object v2, v2, v1

    if-eqz v2, :cond_16

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;->material:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_16
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeMaterials:[Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return-void
.end method

.method public static volumeState(Ljava/lang/Object;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeAlphaState:Ljava/lang/Object;

    return-void
.end method

.method static volumeTree(Landroid/view/View;)V
    .registers 3

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const-string v0, ""

    goto :goto_16

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    const-string v1, "volume_dialog_background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "ringer_buttons_background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "volume_dialog_floating_slider_background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2e
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->wrapVolume(Landroid/view/View;)V

    :cond_31
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_50

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_50

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->volumeTree(Landroid/view/View;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_48

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :catch_48
    move-exception p0

    const-string v0, "NotificationGlass"

    const-string v1, "Volume tree"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_50
    return-void
.end method

.method static wrapVolume(Landroid/view/View;)V
    .registers 4

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    if-eqz v1, :cond_9

    return-void

    :cond_9
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_45

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass;->views:Ljava/util/WeakHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGlass$Material;-><init>(Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume background wrapped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotificationGlass"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return-void
.end method
