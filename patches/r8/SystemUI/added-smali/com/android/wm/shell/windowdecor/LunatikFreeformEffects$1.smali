.class Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LunatikFreeformEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->ready(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$o:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$1;->val$o:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 87
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$1;->val$o:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->alpha:F

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$1;->val$o:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->done:Z

    # getter for: Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->openings:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects;->access$000()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$1;->val$o:Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/LunatikFreeformEffects$Opening;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
