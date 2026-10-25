.class public final synthetic Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda0;->f$0:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/android/settings/notification/LunatikTouchSoundPreference;->lambda$attach$0(Landroid/media/AudioManager;)V

    return-void
.end method
