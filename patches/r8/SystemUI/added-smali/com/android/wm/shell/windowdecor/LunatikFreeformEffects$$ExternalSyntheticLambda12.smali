.class public final synthetic Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;->f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;->f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->lambda$unlockFade$12(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;)V

    return-void
.end method
