.class public final Lcom/android/launcher3/icons/LunatikWidgetText;
.super Ljava/lang/Object;
.source "LunatikWidgetText.java"


# static fields
.field private static final gaps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sizes:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Float;",
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

    sput-object v0, Lcom/android/launcher3/icons/LunatikWidgetText;->sizes:Ljava/util/WeakHashMap;

    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/LunatikWidgetText;->gaps:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/appwidget/AppWidgetHostView;)V
    .registers 3

    .line 7
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v1, :cond_b

    goto :goto_34

    .line 8
    :cond_b
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v1, "com.google.android.apps.weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {p0}, Lcom/android/launcher3/icons/LunatikWidgetText;->weather(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/icons/LunatikWidgetText;->spacing(Landroid/view/View;I)V

    goto :goto_33

    .line 10
    :cond_24
    const-string v1, "com.google.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/icons/LunatikWidgetText;->clock(Landroid/view/View;I)V

    .line 11
    :cond_33
    :goto_33
    return-void

    .line 7
    :cond_34
    :goto_34
    return-void
.end method

.method private static clock(Landroid/view/View;I)V
    .registers 11

    .line 37
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_b2

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    :try_start_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_18

    :catch_15
    move-exception v2

    const-string v2, ""

    .line 38
    :goto_18
    const-string v3, "clock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-lez v2, :cond_b2

    .line 39
    sget-object v2, Lcom/android/launcher3/icons/LunatikWidgetText;->sizes:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-nez v2, :cond_3d

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/icons/LunatikWidgetText;->sizes:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_3d
    new-instance v3, Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 41
    const/4 v5, 0x0

    const/16 v6, 0x30

    const/4 v7, 0x0

    :goto_56
    const/16 v8, 0x39

    if-gt v6, v8, :cond_6a

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v6, v6, 0x1

    int-to-char v6, v6

    goto :goto_56

    .line 42
    :cond_6a
    const/high16 v6, 0x40800000    # 4.0f

    mul-float v7, v7, v6

    const-string v6, ":"

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v7, v3

    int-to-float v3, p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x42300000    # 44.0f

    mul-float v6, v6, v8

    sub-float/2addr v3, v6

    .line 43
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v6, 0x3f83d70a    # 1.03f

    mul-float v7, v7, v6

    div-float/2addr v3, v7

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v2, v2, v3

    .line 44
    cmpl-float v3, v2, v5

    if-lez v3, :cond_b2

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    :cond_b2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c8

    check-cast p0, Landroid/view/ViewGroup;

    :goto_b8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_c8

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/icons/LunatikWidgetText;->clock(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 48
    :cond_c8
    return-void
.end method

.method private static spacing(Landroid/view/View;I)V
    .registers 10

    .line 26
    instance-of v0, p0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 27
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_aa

    .line 28
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_43

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_40

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v6

    if-nez v6, :cond_40

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_40

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_40

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_40

    const/4 v4, 0x1

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 29
    :cond_43
    if-eqz v4, :cond_aa

    if-lez p1, :cond_57

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, p1

    const v5, 0x3f59999a    # 0.85f

    mul-float v4, v4, v5

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_57

    goto :goto_58

    :cond_57
    const/4 v3, 0x0

    .line 30
    :goto_58
    const/4 v2, 0x0

    :goto_59
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_aa

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_a7

    move-object v5, v4

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_a7

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/icons/LunatikWidgetText;->gaps:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_8d

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v7, :cond_8d

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/icons/LunatikWidgetText;->gaps:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    if-eqz v6, :cond_a7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v3, :cond_9e

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :cond_9e
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v7, v6, :cond_a7

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 34
    :cond_aa
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c0

    check-cast p0, Landroid/view/ViewGroup;

    :goto_b0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_c0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/icons/LunatikWidgetText;->spacing(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    .line 35
    :cond_c0
    return-void
.end method

.method private static weather(Landroid/view/View;)V
    .registers 6

    .line 13
    instance-of v0, p0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_59

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-nez v3, :cond_59

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_59

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_59

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, v0, :cond_59

    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v4

    if-eq v4, v3, :cond_59

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 17
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_59
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6f

    check-cast p0, Landroid/view/ViewGroup;

    :goto_5f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_6f

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/icons/LunatikWidgetText;->weather(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 24
    :cond_6f
    return-void
.end method
