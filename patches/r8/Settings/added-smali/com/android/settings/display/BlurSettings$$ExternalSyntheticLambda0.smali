.class public final synthetic Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/BlurSettings;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/BlurSettings;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/BlurSettings;

    iput-object p2, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/BlurSettings;

    iget-object v1, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/display/BlurSettings;->lambda$onCreatePreferences$0$com-android-settings-display-BlurSettings(Landroid/content/Context;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
