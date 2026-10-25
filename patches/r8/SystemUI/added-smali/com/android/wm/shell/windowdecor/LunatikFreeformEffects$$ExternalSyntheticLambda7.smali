.class public final synthetic Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$$ExternalSyntheticLambda7;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->lambda$decorate$6(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$State;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method
