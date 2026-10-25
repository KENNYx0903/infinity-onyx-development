.class public final synthetic Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z[Ljava/lang/String;Landroidx/preference/Preference;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/LunatikTouchSoundPreference$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/Preference;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/notification/LunatikTouchSoundPreference;->lambda$attach$2(Landroid/content/Context;Z[Ljava/lang/String;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
