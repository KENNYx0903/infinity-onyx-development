.class public final Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;

.field public static final height:Landroidx/compose/runtime/MutableFloatState;

.field public static menuActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x44020000    # 520.0f

    invoke-static {v0}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object v0

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;->height:Landroidx/compose/runtime/MutableFloatState;

    new-instance v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;

    invoke-direct {v0}, Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;-><init>()V

    sput-object v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;->INSTANCE:Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-boolean v0, Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;->menuActive:Z

    if-nez v0, :cond_32

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v1, v0, v1

    if-lez v1, :cond_32

    sget-object v1, Lcom/ireddragonicy/gamespace/gamebar/LunatikPanelSize;->height:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {v1}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-lez v2, :cond_32

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    :cond_32
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
