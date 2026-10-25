.class public final synthetic Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;[Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/settings/notification/LunatikTouchSoundPreference;->lambda$attach$1(Landroid/content/Context;Landroidx/preference/Preference;[Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
