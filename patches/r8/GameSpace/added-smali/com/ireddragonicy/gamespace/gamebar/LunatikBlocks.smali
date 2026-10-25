.class public final Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;
.super Ljava/lang/Object;


# direct methods
.method public static batteryContents(Lcom/ireddragonicy/gamespace/telemetry/TelemetrySnapshot;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;)V
    .registers 13

    const v0, 0x4c554e42    # 5.591681E7f

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/telemetry/TelemetrySnapshot;->getBatteryCapacity()I

    move-result v0

    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/telemetry/TelemetrySnapshot;->getBatteryPowerW()F

    move-result v1

    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/telemetry/TelemetrySnapshot;->getBatteryTempC()F

    move-result v2

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;-><init>(IFFZ)V

    move-object v6, v4

    sget-object v4, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;->INSTANCE:Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v5, v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const/high16 v0, 0x42040000    # 33.0f

    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move-object v7, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-void
.end method

.method public static batterySp()J
    .registers 2

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static brightness(Lcom/ireddragonicy/gamespace/gamebar/brightness/BrightnessInteractor;Landroidx/compose/runtime/Composer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ireddragonicy/gamespace/gamebar/PanelQuickSettingsKt;->BrightnessSlider(Lcom/ireddragonicy/gamespace/gamebar/brightness/BrightnessInteractor;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static buttonColor()J
    .registers 2

    const-string v0, "system_neutral2_800"

    invoke-static {v0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;->palette(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static card(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    const-string v1, "system_neutral1_900"

    invoke-static {v1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;->palette(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static circle(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .registers 5

    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    const-string v1, "system_neutral2_800"

    invoke-static {v1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;->palette(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static compactBatterySp()J
    .registers 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static emptyTiles(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;)V
    .registers 6

    const v0, 0x4c554e45    # 5.591682E7f

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v1, 0x42e40000    # 114.0f

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-void
.end method

.method public static headerPadding(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .registers 3

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static isFps(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "FPS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "FT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_e
    return v0
.end method

.method public static label(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "\u0420\u0435\u0436\u0438\u043c Danmaku"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "\u0411\u0435\u0433\u0443\u0449\u0430\u044f\n\u0441\u0442\u0440\u043e\u043a\u0430"

    return-object p0

    :cond_b
    const-string v0, "\u0418\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f \u043e FPS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "\u0421\u0447\u0451\u0442\u0447\u0438\u043a\nFPS"

    return-object p0

    :cond_16
    const-string v0, "\u042d\u043a\u0440\u0430\u043d \u0432\u0441\u0435\u0433\u0434\u0430 \u0432\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "\u042d\u043a\u0440\u0430\u043d\n\u0432\u043a\u043b\u044e\u0447\u0451\u043d"

    return-object p0

    :cond_21
    const-string v0, "\u042d\u043a\u0440\u0430\u043d \u0432\u0441\u0435\u0433\u0434\u0430 \u0432\u043a\u043b\u044e\u0447\u0451\u043d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "\u042d\u043a\u0440\u0430\u043d\n\u0432\u043a\u043b\u044e\u0447\u0451\u043d"

    return-object p0

    :cond_2c
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "\u041e\u043f\u0446\u0438\u0438"

    return-object p0

    :cond_37
    const-string v0, "\u0421\u043a\u0440\u0438\u043d\u0448\u043e\u0442"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "\u0421\u043d\u0438\u043c\u043e\u043a"

    return-object p0

    :cond_42
    const-string v0, "\u0422\u0440\u0430\u043d\u0441\u043b\u044f\u0446\u0438\u044f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string p0, "\u0412\u044b\u0432\u043e\u0434\n\u044d\u043a\u0440\u0430\u043d\u0430"

    :cond_4c
    return-object p0
.end method

.method public static mainViewport(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .registers 3

    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static menuOffset()J
    .registers 2

    const-wide v0, 0x40c00000

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpOffset;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static menuShape()Landroidx/compose/ui/graphics/Shape;
    .registers 1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    return-object v0
.end method

.method public static menuSurface(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .registers 2

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static palette(Ljava/lang/String;)J
    .registers 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    const-string v2, "android"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    return-wide v0

    :cond_18
    const-wide v0, 0xff1c2a31L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static pillWeight(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, v1}, Landroidx/compose/foundation/layout/RowScope;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public static screenScroll(Lcom/ireddragonicy/gamespace/gamebar/tiles/TileRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;
    .registers 7

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/ireddragonicy/gamespace/gamebar/tiles/TileRepository;->getShowPerfTuner()Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const v1, 0x4c554e00    # 5.5916544E7f

    add-int/2addr v0, v1

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p2, v0, v1}, Landroidx/compose/foundation/ScrollKt;->rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    move-result-object v2

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object v2
.end method

.method public static stripInset(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .registers 1

    return-object p0
.end method

.method public static surface(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .registers 5

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    const-string v1, "system_neutral1_900"

    invoke-static {v1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;->palette(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static surfaceColor()J
    .registers 2

    const-string v0, "system_neutral1_900"

    invoke-static {v0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;->palette(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static topCircle(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .registers 4

    invoke-static {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;->topCircleSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static topCircleSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .registers 2

    const/high16 v0, 0x42080000    # 34.0f

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static tunerSurface(Landroidx/compose/ui/Modifier;Lcom/ireddragonicy/gamespace/gamebar/tiles/TileRepository;Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/Modifier;
    .registers 6

    invoke-virtual {p1}, Lcom/ireddragonicy/gamespace/gamebar/tiles/TileRepository;->getShowPerfTuner()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;->menuActive:Z

    if-nez v0, :cond_22

    invoke-static {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;->mainViewport(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_22
    sget-object v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;->height:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {p0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBlocks;->surface(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
