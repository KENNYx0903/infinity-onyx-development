.class public final Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$EmptyFactory;
.super Ljava/lang/Object;
.source "LunatikBatteryView.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$EmptyFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$EmptyFactory;

    invoke-direct {v0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$EmptyFactory;-><init>()V

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$EmptyFactory;->INSTANCE:Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$EmptyFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .line 107
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 109
    if-eqz v1, :cond_25

    const-string v1, "\u041d\u0435\u0442 \u043f\u043b\u0438\u0442\u043e\u043a\n\u0414\u043e\u0431\u0430\u0432\u044c\u0442\u0435 \u0438\u0445 \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445 \u043f\u0430\u043d\u0435\u043b\u0438"

    goto :goto_2b

    :cond_25
    const-string v1, "No tiles\nAdd them in panel settings"

    invoke-static/range {v1 .. v1}, Lcom/infinity/localization/RuUiText;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "android"

    const-string v4, "system_neutral2_200"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 114
    if-nez v1, :cond_5e

    const p1, -0x403b2b

    goto :goto_62

    :cond_5e
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_62
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 104
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$EmptyFactory;->invoke(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
