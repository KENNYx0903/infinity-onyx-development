.class public final Lcom/ireddragonicy/gamespace/hub/FixedPanelAppearance;
.super Ljava/lang/Object;


# direct methods
.method public static rows([Ljava/lang/Object;)Ljava/util/List;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    array-length v2, p0

    :goto_7
    if-ge v1, v2, :cond_4e

    aget-object v3, p0, v1

    instance-of v4, v3, Lcom/ireddragonicy/gamespace/hub/Choice;

    if-eqz v4, :cond_1e

    move-object v4, v3

    check-cast v4, Lcom/ireddragonicy/gamespace/hub/Choice;

    invoke-virtual {v4}, Lcom/ireddragonicy/gamespace/hub/Choice;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gamespace_panel_color_mode"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    :cond_1e
    instance-of v4, v3, Lcom/ireddragonicy/gamespace/hub/IntSlider;

    if-eqz v4, :cond_31

    move-object v4, v3

    check-cast v4, Lcom/ireddragonicy/gamespace/hub/IntSlider;

    invoke-virtual {v4}, Lcom/ireddragonicy/gamespace/hub/IntSlider;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gamespace_icon_idle_alpha"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    :cond_31
    instance-of v4, v3, Lcom/ireddragonicy/gamespace/hub/Link;

    if-eqz v4, :cond_48

    move-object v4, v3

    check-cast v4, Lcom/ireddragonicy/gamespace/hub/Link;

    invoke-virtual {v4}, Lcom/ireddragonicy/gamespace/hub/Link;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sidebar Studio"

    invoke-static {v5}, Lcom/infinity/localization/RuUiText;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    :cond_48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4e
    return-object v0
.end method
