.class public final synthetic Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/BlurSettings;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/preference/SeekBarPreference;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/BlurSettings;Ljava/lang/String;Landroidx/preference/SeekBarPreference;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/display/BlurSettings;

    iput-object p2, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;->f$2:Landroidx/preference/SeekBarPreference;

    iput-object p4, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    .line 0
    iget-object v0, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/display/BlurSettings;

    iget-object v1, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;->f$2:Landroidx/preference/SeekBarPreference;

    iget-object v3, p0, Lcom/android/settings/display/BlurSettings$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/display/BlurSettings;->lambda$slider$6$com-android-settings-display-BlurSettings(Ljava/lang/String;Landroidx/preference/SeekBarPreference;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
