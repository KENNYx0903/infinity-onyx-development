.class public final Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;
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
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final bypass:Z

.field final capacity:I

.field final temperature:F

.field final watts:F


# direct methods
.method public constructor <init>(IFFZ)V
    .registers 5

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->capacity:I

    iput p2, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->watts:F

    iput p3, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->temperature:F

    iput-boolean p4, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->bypass:Z

    .line 128
    return-void
.end method


# virtual methods
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

    .line 122
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->invoke(Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Landroid/view/View;)Lkotlin/Unit;
    .registers 6

    .line 130
    check-cast p1, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;

    iget v0, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->capacity:I

    iget v1, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->watts:F

    iget v2, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->temperature:F

    iget-boolean v3, p0, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView$Update;->bypass:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ireddragonicy/gamespace/gamebar/LunatikBatteryView;->update(IFFZ)V

    .line 131
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
