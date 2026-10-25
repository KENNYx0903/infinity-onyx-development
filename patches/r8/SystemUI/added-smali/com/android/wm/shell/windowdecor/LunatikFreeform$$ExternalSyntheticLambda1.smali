.class public final synthetic Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;->f$3:Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeform$$ExternalSyntheticLambda1;->f$3:Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/LunatikFreeform;->lambda$sendResize$1(Ljava/lang/Object;Ljava/lang/Object;Landroid/graphics/Rect;Lcom/android/wm/shell/windowdecor/LunatikFreeform$ResizeFrame;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
