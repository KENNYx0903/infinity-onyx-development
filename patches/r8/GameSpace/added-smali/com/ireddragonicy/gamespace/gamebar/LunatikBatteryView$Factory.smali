.class public final Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;
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
    name = "Factory"
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
.field public static final INSTANCE:Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;

    invoke-direct {v0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;-><init>()V

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;->INSTANCE:Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    .line 120
    new-instance v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;

    invoke-direct {v0, p1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;-><init>(Landroid/content/Context;)V

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

    .line 118
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Factory;->invoke(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
