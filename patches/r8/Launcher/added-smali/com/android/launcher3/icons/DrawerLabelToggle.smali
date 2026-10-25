.class public final Lcom/android/launcher3/icons/DrawerLabelToggle;
.super Ljava/lang/Object;
.source "DrawerLabelToggle.java"


# static fields
.field static final KEY:Ljava/lang/String; = "pref_drawer_label_condense"

.field static final listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field static prefs:Landroid/content/SharedPreferences;

.field static final views:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/DrawerLabelToggle;->views:Ljava/util/WeakHashMap;

    .line 5
    new-instance v0, Lcom/android/launcher3/icons/DrawerLabelToggle$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/icons/DrawerLabelToggle$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/DrawerLabelToggle;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Ljava/lang/Object;)V
    .registers 7

    .line 8
    const-string v0, "pref_drawer_label_condense"

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPreferenceScreen"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getContext"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/icons/DrawerLabelToggle;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ru"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v4, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v4, v0}, Landroidx/preference/SwitchPreferenceCompat;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroidx/preference/SwitchPreferenceCompat;->setPersistent(Z)V

    if-eqz v2, :cond_59

    const-string p0, "\u0421\u0436\u0430\u0442\u0438\u0435 \u043f\u043e\u0434\u043f\u0438\u0441\u0435\u0439 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    goto :goto_5b

    :cond_59
    const-string p0, "Condense app labels"

    :goto_5b
    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreferenceCompat;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_63

    const-string p0, "\u0421\u0443\u0436\u0430\u0442\u044c \u0434\u043b\u0438\u043d\u043d\u044b\u0435 \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u044f \u0432 \u043c\u0435\u043d\u044e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439, \u0447\u0442\u043e\u0431\u044b \u043e\u043d\u0438 \u043f\u043e\u043c\u0435\u0449\u0430\u043b\u0438\u0441\u044c \u0446\u0435\u043b\u0438\u043a\u043e\u043c"

    goto :goto_65

    :cond_63
    const-string p0, "Narrow long app drawer labels to fit more text"

    :goto_65
    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/android/launcher3/icons/DrawerLabelToggle;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreferenceCompat;->setChecked(Z)V

    const/4 p0, 0x2

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreferenceCompat;->setOrder(I)V

    invoke-virtual {v4, v3}, Landroidx/preference/SwitchPreferenceCompat;->setIconSpaceReserved(Z)V

    new-instance p0, Lcom/android/launcher3/icons/DrawerLabelToggle$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/launcher3/icons/DrawerLabelToggle$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreferenceCompat;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_84} :catch_85

    goto :goto_8d

    :catch_85
    move-exception p0

    const-string v0, "DrawerLabelToggle"

    const-string v1, "attach"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8d
    return-void
.end method

.method public static enabled(Landroid/widget/TextView;)Z
    .registers 4

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/icons/DrawerLabelToggle;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/android/launcher3/icons/DrawerLabelToggle;->views:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher3/icons/DrawerLabelToggle;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_drawer_label_condense"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_28

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_28
    const/4 p0, 0x0

    return p0

    :cond_2a
    return v1
.end method

.method static init(Landroid/content/Context;)V
    .registers 3

    .line 6
    sget-object v0, Lcom/android/launcher3/icons/DrawerLabelToggle;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.android.launcher3.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/icons/DrawerLabelToggle;->prefs:Landroid/content/SharedPreferences;

    sget-object p0, Lcom/android/launcher3/icons/DrawerLabelToggle;->prefs:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/launcher3/icons/DrawerLabelToggle;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic lambda$attach$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 8
    sget-object p0, Lcom/android/launcher3/icons/DrawerLabelToggle;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "pref_drawer_label_condense"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$static$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 5

    .line 5
    const-string v0, "pref_drawer_label_condense"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    sget-object p1, Lcom/android/launcher3/icons/DrawerLabelToggle;->views:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2c

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_2c
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    goto :goto_12

    :cond_33
    return-void
.end method
