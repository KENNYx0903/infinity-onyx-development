.class final Lcom/android/launcher3/qsb/QsbGlass$Material;
.super Ljava/lang/Object;
.source "QsbGlass.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/qsb/QsbGlass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Material"
.end annotation


# instance fields
.field blur:Landroid/graphics/drawable/Drawable;

.field final bounds:Landroid/graphics/Rect;

.field final guard:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field lastAlpha:I

.field lastColor:I

.field lastRadius:I

.field setColor:Ljava/lang/reflect/Method;

.field setCorner:Ljava/lang/reflect/Method;

.field setRadius:Ljava/lang/reflect/Method;

.field final view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->lastRadius:I

    iput v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->lastAlpha:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->bounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher3/qsb/QsbGlass$Material$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/qsb/QsbGlass$Material$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/qsb/QsbGlass$Material;)V

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->guard:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->view:Ljava/lang/ref/WeakReference;

    const-class v0, Landroid/view/View;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getViewRootImpl"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "createBackgroundBlurDrawable"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setBlurRadius"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->setRadius:Ljava/lang/reflect/Method;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setColor"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->setColor:Ljava/lang/reflect/Method;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "setCornerRadius"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->setCorner:Ljava/lang/reflect/Method;

    const-string v1, "mPaint"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->guard:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string p1, "QsbGlass"

    const-string v0, "Native outer search panel material created"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    sget v0, Lcom/android/launcher3/qsb/QsbGlass;->radius:I

    iget v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->lastRadius:I

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->setRadius:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/android/launcher3/qsb/QsbGlass;->radius:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/android/launcher3/qsb/QsbGlass;->radius:I

    iput v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->lastRadius:I

    :cond_1b
    sget v0, Lcom/android/launcher3/qsb/QsbGlass;->dark:I

    mul-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0x242b28

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->lastColor:I

    if-eq v0, v1, :cond_42

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->setColor:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->lastColor:I

    :cond_42
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->setCorner:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {v2, v3, v4, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbGlass$Material;->sync()V

    iget-object p2, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-launcher3-qsb-QsbGlass$Material()Z
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/android/launcher3/qsb/QsbGlass$Material;->sync()V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 12
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->guard:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_19
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v0, Lcom/android/launcher3/qsb/QsbGlass;->materials:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method sync()V
    .registers 6

    .line 10
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_67

    iget-object v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_f

    goto :goto_67

    :cond_f
    const/high16 v1, 0x3f800000    # 1.0f

    move-object v2, v0

    :goto_12
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v1, 0x0

    goto :goto_2e

    :cond_1c
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2c

    check-cast v2, Landroid/view/View;

    goto :goto_12

    :cond_2c
    const/4 v2, 0x0

    goto :goto_12

    :cond_2e
    :goto_2e
    sget-boolean v2, Lcom/android/launcher3/qsb/QsbGlass;->enabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_48

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_48

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_48

    const/4 v2, 0x1

    goto :goto_49

    :cond_48
    move v2, v3

    :goto_49
    if-eqz v2, :cond_53

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_54

    :cond_53
    move v1, v3

    :goto_54
    iget v4, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->lastAlpha:I

    if-eq v1, v4, :cond_5d

    iput v1, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->lastAlpha:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_5d
    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lcom/android/launcher3/qsb/QsbGlass$Material;->blur:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_67
    :goto_67
    return-void
.end method
