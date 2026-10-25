.class public final Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;
.super Landroid/view/View;
.source "LunatikBatteryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;,
        Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;,
        Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$EmptyFactory;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private bypass:Z

.field private capacity:I

.field private final density:F

.field private final fontScale:F

.field private initialized:Z

.field private final paint:Landroid/graphics/Paint;

.field private progress:F

.field private final secondary:I

.field private temperature:F

.field private final textColor:I

.field private watts:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    .line 24
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->density:F

    .line 25
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->fontScale:F

    .line 26
    const-string p1, "system_neutral1_100"

    const v1, -0x1c1c13

    invoke-direct {p0, p1, v1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->palette(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->textColor:I

    .line 27
    const-string p1, "system_neutral2_200"

    const v1, -0x403b2b

    invoke-direct {p0, p1, v1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->palette(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->secondary:I

    .line 28
    iget-object p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    invoke-virtual {p0, v0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->setImportantForAccessibility(I)V

    .line 30
    return-void
.end method

.method private palette(Ljava/lang/String;I)I
    .registers 6

    .line 32
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 33
    if-nez p1, :cond_f

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    :goto_17
    return p2
.end method


# virtual methods
.method synthetic lambda$update$0$com-ireddragonicy-gamespace-gamebar-LunatikBatteryView(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 49
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->progress:F

    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 57
    :cond_9
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 58
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 20

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 62
    iget v2, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->density:F

    iget v3, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->density:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 63
    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->density:F

    div-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->density:F

    div-float/2addr v3, v4

    .line 64
    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v2, v10

    .line 65
    iget v5, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->progress:F

    .line 67
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    const-string v7, "sans-serif-medium"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 68
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->fontScale:F

    const v11, 0x3f933333    # 1.15f

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v12, 0x40d00000    # 6.5f

    mul-float/2addr v7, v12

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    const/16 v12, -0x4794

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    const/high16 v6, 0x41100000    # 9.0f

    iget-object v7, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    const-string v13, "BYPASS"

    invoke-virtual {v1, v13, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    const-string v7, "sans-serif"

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 76
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->fontScale:F

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->capacity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 78
    iget v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->watts:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3d4ccccd    # 0.05f

    cmpl-float v6, v6, v7

    const-string v7, ""

    if-ltz v6, :cond_c9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    iget v8, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->watts:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v13, " %+.1fW"

    invoke-static {v6, v13, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto :goto_ca

    :cond_c9
    move-object v13, v7

    .line 79
    :goto_ca
    iget v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->temperature:F

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_e5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    iget v7, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->temperature:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, " %.0f\u00b0C"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_e5
    move-object v14, v7

    .line 80
    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 81
    const/high16 v15, 0x41000000    # 8.0f

    add-float/2addr v6, v15

    .line 82
    const v7, 0x3e23d70a    # 0.16f

    mul-float/2addr v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    sub-float/2addr v2, v10

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    div-float/2addr v2, v8

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 83
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 84
    div-float/2addr v3, v10

    const v8, 0x40a66666    # 5.2f

    mul-float/2addr v5, v8

    add-float/2addr v3, v5

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 86
    neg-float v2, v6

    div-float/2addr v2, v10

    .line 87
    iget-object v3, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->capacity:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_133

    const/16 v4, -0x7f85

    goto :goto_135

    :cond_133
    iget v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->secondary:I

    :goto_135
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    add-float v4, v2, v8

    move v3, v7

    const v7, 0x3f4ccccd    # 0.8f

    iget-object v8, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    move v5, v3

    const v3, -0x3f733333    # -4.4f

    move v6, v5

    const v5, 0x408ccccd    # 4.4f

    move/from16 v16, v6

    const v6, 0x3f4ccccd    # 0.8f

    move/from16 v17, v10

    move/from16 v10, v16

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 89
    move v7, v2

    const/high16 v1, 0x3fc00000    # 1.5f

    add-float v2, v7, v1

    const v1, 0x406ccccd    # 3.7f

    add-float v4, v7, v1

    const v5, -0x3f766666    # -4.3f

    iget-object v6, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    const/high16 v3, -0x3f500000    # -5.5f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    add-float v2, v7, v15

    .line 91
    iget-object v3, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 92
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v3

    neg-float v3, v4

    div-float v3, v3, v17

    .line 93
    iget-object v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->textColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    iget-object v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v2, v4

    .line 96
    iget-object v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->secondary:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 98
    iget-object v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v2, v4

    .line 99
    iget-object v4, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->temperature:F

    const/high16 v6, 0x42340000    # 45.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1ab

    goto :goto_1ae

    :cond_1ab
    const v12, -0x7e387c

    :goto_1ae
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 102
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 103
    return-void
.end method

.method public update(IFFZ)V
    .registers 10

    .line 36
    iput p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->capacity:I

    .line 37
    iput p2, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->watts:F

    .line 38
    iput p3, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->temperature:F

    .line 39
    iget-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->initialized:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_19

    .line 40
    iput-boolean v3, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->initialized:Z

    .line 41
    iput-boolean p4, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->bypass:Z

    .line 42
    if-eqz p4, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    iput v1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->progress:F

    goto :goto_5c

    .line 43
    :cond_19
    iget-boolean v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->bypass:Z

    if-eq v0, p4, :cond_5c

    .line 44
    iput-boolean p4, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->bypass:Z

    .line 45
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 46
    :cond_28
    iget v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->progress:F

    if-eqz p4, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v0, v2, v4

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    .line 47
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$$ExternalSyntheticLambda0;-><init>(Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50
    iget-object v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    :cond_5c
    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_66

    const-string p4, "BYPASS, "

    goto :goto_68

    :cond_66
    const-string p4, ""

    :goto_68
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "%, "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " W, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u00b0C"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->invalidate()V

    .line 54
    return-void
.end method
