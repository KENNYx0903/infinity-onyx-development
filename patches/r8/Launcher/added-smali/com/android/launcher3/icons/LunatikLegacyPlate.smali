.class public final Lcom/android/launcher3/icons/LunatikLegacyPlate;
.super Ljava/lang/Object;
.source "LunatikLegacyPlate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static near(II)Z
    .registers 5

    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xf5

    if-lt v0, v1, :cond_39

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_39

    .line 48
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_39

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, v1, :cond_39

    const/4 p0, 0x1

    goto :goto_3a

    :cond_39
    const/4 p0, 0x0

    .line 47
    :goto_3a
    return p0
.end method

.method public static normalizeMono([BI)V
    .registers 11

    .line 32
    const/16 v0, 0x10

    if-lt p1, v0, :cond_92

    array-length v0, p0

    mul-int v1, p1, p1

    if-eq v0, v1, :cond_b

    goto/16 :goto_92

    .line 33
    :cond_b
    nop

    .line 34
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    const/16 v4, 0x18

    if-ge v1, v4, :cond_4e

    .line 35
    div-int/lit8 v4, p1, 0x5

    mul-int/lit8 v5, p1, 0x3

    div-int/lit8 v5, v5, 0x5

    mul-int v5, v5, v1

    div-int/lit8 v5, v5, 0x17

    add-int/2addr v4, v5

    div-int/lit8 v5, p1, 0x10

    .line 36
    mul-int v6, v5, p1

    add-int/2addr v6, v4

    add-int/lit8 v7, p1, -0x1

    sub-int/2addr v7, v5

    mul-int v7, v7, p1

    add-int/2addr v7, v4

    mul-int v4, v4, p1

    add-int v8, v4, v5

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v5

    filled-new-array {v6, v7, v8, v4}, [I

    move-result-object v4

    .line 37
    const/4 v5, 0x0

    :goto_37
    const/4 v6, 0x4

    if-ge v5, v6, :cond_4b

    aget v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xe1

    if-le v6, v7, :cond_48

    add-int/lit8 v2, v2, 0x1

    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 34
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 39
    :cond_4e
    int-to-float p1, v2

    int-to-float v1, v3

    const v2, 0x3f70a3d7    # 0.94f

    mul-float v1, v1, v2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_5a

    return-void

    .line 40
    :cond_5a
    nop

    .line 41
    array-length p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5e
    if-ge v1, p1, :cond_6d

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x50

    if-ge v3, v4, :cond_6a

    add-int/lit8 v2, v2, 0x1

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 42
    :cond_6d
    int-to-float p1, v2

    array-length v1, p0

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 43
    const v1, 0x3d0f5c29    # 0.035f

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_91

    const v1, 0x3f0ccccd    # 0.55f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_80

    goto :goto_91

    .line 44
    :cond_80
    nop

    :goto_81
    array-length p1, p0

    if-ge v0, p1, :cond_90

    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    rsub-int p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 45
    :cond_90
    return-void

    .line 43
    :cond_91
    :goto_91
    return-void

    .line 32
    :cond_92
    :goto_92
    return-void
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable;
    .registers 14

    .line 8
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 9
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    if-eqz v0, :cond_da

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_da

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1f

    goto/16 :goto_da

    .line 11
    :cond_1f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 12
    const/16 v4, 0x20

    if-lt v2, v4, :cond_d9

    if-lt v3, v4, :cond_d9

    sub-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x14

    if-le v4, v5, :cond_3d

    goto/16 :goto_d9

    .line 13
    :cond_3d
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x20

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 14
    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xf5

    if-ge v7, v8, :cond_4e

    return-object v1

    .line 16
    :cond_4e
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_50
    const/16 v9, 0x8

    if-gt v8, v9, :cond_97

    .line 17
    div-int/lit8 v10, v2, 0x4

    mul-int v11, v8, v4

    div-int/2addr v11, v9

    add-int/2addr v10, v11

    div-int/lit8 v11, v3, 0x4

    div-int/lit8 v12, v3, 0x2

    mul-int v12, v12, v8

    div-int/2addr v12, v9

    add-int/2addr v11, v12

    .line 18
    invoke-virtual {v0, v10, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v6, v9}, Lcom/android/launcher3/icons/LunatikLegacyPlate;->near(II)Z

    move-result v9

    if-eqz v9, :cond_96

    add-int/lit8 v9, v3, -0x1

    sub-int/2addr v9, v5

    invoke-virtual {v0, v10, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v6, v9}, Lcom/android/launcher3/icons/LunatikLegacyPlate;->near(II)Z

    move-result v9

    if-eqz v9, :cond_96

    div-int/lit8 v9, v2, 0x20

    .line 19
    invoke-virtual {v0, v9, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v6, v10}, Lcom/android/launcher3/icons/LunatikLegacyPlate;->near(II)Z

    move-result v10

    if-eqz v10, :cond_96

    add-int/lit8 v10, v2, -0x1

    sub-int/2addr v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v6, v9}, Lcom/android/launcher3/icons/LunatikLegacyPlate;->near(II)Z

    move-result v9

    if-nez v9, :cond_93

    goto :goto_96

    .line 16
    :cond_93
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 19
    :cond_96
    :goto_96
    return-object v1

    .line 22
    :cond_97
    nop

    .line 23
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9a
    const/16 v8, 0x10

    if-ge v4, v8, :cond_c1

    const/4 v9, 0x0

    :goto_9f
    if-ge v9, v8, :cond_be

    .line 24
    add-int/lit8 v10, v2, -0x1

    mul-int v10, v10, v9

    div-int/lit8 v10, v10, 0xf

    add-int/lit8 v11, v3, -0x1

    mul-int v11, v11, v4

    div-int/lit8 v11, v11, 0xf

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    const/16 v11, 0xf0

    if-le v10, v11, :cond_bb

    add-int/lit8 v5, v5, 0x1

    .line 23
    :cond_bb
    add-int/lit8 v9, v9, 0x1

    goto :goto_9f

    :cond_be
    add-int/lit8 v4, v4, 0x1

    goto :goto_9a

    .line 25
    :cond_c1
    const/16 v0, 0xcd

    if-ge v5, v0, :cond_c6

    return-object v1

    .line 28
    :cond_c6
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const v3, 0x3e3851ec    # 0.18f

    invoke-direct {v2, p0, v3}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 12
    :cond_d9
    :goto_d9
    return-object v1

    .line 10
    :cond_da
    :goto_da
    return-object v1
.end method
