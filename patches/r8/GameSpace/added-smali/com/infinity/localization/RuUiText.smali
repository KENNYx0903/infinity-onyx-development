.class public final Lcom/infinity/localization/RuUiText;
.super Ljava/lang/Object;
.source "RuUiText.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static text(Ljava/lang/String;)Ljava/lang/String;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ru"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    const-string v1, "Game Space Settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0438\u0433\u0440\u043e\u0432\u043e\u0433\u043e \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0430"

    return-object v0

    :cond_1e
    const-string v1, "Game Library"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "\u0411\u0438\u0431\u043b\u0438\u043e\u0442\u0435\u043a\u0430 \u0438\u0433\u0440"

    return-object v0

    :cond_29
    const-string v1, "No Games Yet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v0, "\u0418\u0433\u0440\u044b \u043f\u043e\u043a\u0430 \u043d\u0435 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u044b"

    return-object v0

    :cond_34
    const-string v1, "Tap the + button to add your games"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 +, \u0447\u0442\u043e\u0431\u044b \u0434\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_3f
    const-string v1, "Game Space"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v0, "\u0418\u0433\u0440\u043e\u0432\u043e\u0435 \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u043e"

    return-object v0

    :cond_4a
    const-string v1, " games installed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v0, " \u0438\u0433\u0440 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e"

    return-object v0

    :cond_55
    const-string v1, "Accent Color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v0, "\u0426\u0432\u0435\u0442 \u0430\u043a\u0446\u0435\u043d\u0442\u0430"

    return-object v0

    :cond_60
    const-string v1, "Applied to every Game Space screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v0, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f \u043d\u0430 \u0432\u0441\u0435\u0445 \u044d\u043a\u0440\u0430\u043d\u0430\u0445 \u0438\u0433\u0440\u043e\u0432\u043e\u0433\u043e \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0430"

    return-object v0

    :cond_6b
    const-string v1, "Launch Optimization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const-string v0, "\u041e\u043f\u0442\u0438\u043c\u0438\u0437\u0430\u0446\u0438\u044f \u0437\u0430\u043f\u0443\u0441\u043a\u0430"

    return-object v0

    :cond_76
    const-string v1, "Smart Memory Management"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u0430\u043c\u044f\u0442\u044c\u044e"

    return-object v0

    :cond_81
    const-string v1, "Clear background apps when launching games"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const-string v0, "\u041e\u0447\u0438\u0449\u0430\u0442\u044c \u0444\u043e\u043d\u043e\u0432\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0435 \u0438\u0433\u0440"

    return-object v0

    :cond_8c
    const-string v1, "Cache Management"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043a\u044d\u0448\u0435\u043c"

    return-object v0

    :cond_97
    const-string v1, "Optimize game cache for faster loading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const-string v0, "\u041e\u043f\u0442\u0438\u043c\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043a\u044d\u0448 \u0438\u0433\u0440 \u0434\u043b\u044f \u0431\u044b\u0441\u0442\u0440\u043e\u0439 \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0438"

    return-object v0

    :cond_a2
    const-string v1, "FPS Stats"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\u0421\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430 FPS"

    if-eqz v1, :cond_ad

    return-object v2

    :cond_ad
    const-string v1, "View recorded performance sessions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    const-string v0, "\u041f\u0440\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0437\u0430\u043f\u0438\u0441\u0438 \u0438\u0433\u0440\u043e\u0432\u044b\u0445 \u0441\u0435\u0441\u0441\u0438\u0439"

    return-object v0

    :cond_b8
    const-string v1, "Custom Thermal Profiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    const-string v0, "\u041f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0435 \u0442\u0435\u0440\u043c\u043e\u043f\u0440\u043e\u0444\u0438\u043b\u0438"

    return-object v0

    :cond_c3
    const-string v1, "Create per-temperature throttle profiles with one-click presets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u0438 \u0434\u043b\u044f \u0440\u0430\u0437\u043d\u044b\u0445 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440"

    return-object v0

    :cond_ce
    const-string v1, "Charging Profiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u0438 \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    return-object v0

    :cond_d9
    const-string v1, "Create custom charging curves \u2014 full control over current & heat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u0442\u043e\u043a \u0437\u0430\u0440\u044f\u0434\u043a\u0438 \u0438 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u043d\u044b\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_e4
    const-string v1, "In-Game Experience"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    const-string v0, "\u0412\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_ef
    const-string v1, "Disable Auto Brightness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    const-string v0, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0430\u0432\u0442\u043e\u044f\u0440\u043a\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_fa
    const-string v1, "Lock brightness while in game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    const-string v0, "\u041d\u0435 \u043c\u0435\u043d\u044f\u0442\u044c \u044f\u0440\u043a\u043e\u0441\u0442\u044c \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_105
    const-string v1, "Stay Awake"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    const-string v0, "\u041d\u0435 \u0432\u044b\u043a\u043b\u044e\u0447\u0430\u0442\u044c \u044d\u043a\u0440\u0430\u043d"

    return-object v0

    :cond_110
    const-string v1, "Keep screen on during games"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    const-string v0, "\u041e\u0441\u0442\u0430\u0432\u043b\u044f\u0442\u044c \u044d\u043a\u0440\u0430\u043d \u0432\u043a\u043b\u044e\u0447\u0451\u043d\u043d\u044b\u043c \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_11b
    const-string v1, "Danmaku Notifications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_126

    const-string v0, "\u0411\u0435\u0433\u0443\u0449\u0438\u0435 \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_126
    const-string v1, "Scrolling bullet-style notifications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u044f \u0431\u0435\u0433\u0443\u0449\u0435\u0439 \u0441\u0442\u0440\u043e\u043a\u043e\u0439"

    return-object v0

    :cond_131
    const-string v1, "Disable Bass Haptics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0432\u0438\u0431\u0440\u0430\u0446\u0438\u044e \u0432 \u0442\u0430\u043a\u0442 \u0431\u0430\u0441\u0430\u043c"

    if-eqz v1, :cond_13c

    return-object v3

    :cond_13c
    const-string v1, "No pulse haptics from game audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_147

    const-string v0, "\u041d\u0435 \u0441\u043e\u0437\u0434\u0430\u0432\u0430\u0442\u044c \u0432\u0438\u0431\u0440\u0430\u0446\u0438\u044e \u0432 \u0442\u0430\u043a\u0442 \u0437\u0432\u0443\u043a\u0443 \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_147
    const-string v1, "Auto DND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152

    const-string v0, "\u0420\u0435\u0436\u0438\u043c \u00ab\u041d\u0435 \u0431\u0435\u0441\u043f\u043e\u043a\u043e\u0438\u0442\u044c\u00bb"

    return-object v0

    :cond_152
    const-string v1, "Do Not Disturb during game sessions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0430\u0442\u044c \u0440\u0435\u0436\u0438\u043c \u00ab\u041d\u0435 \u0431\u0435\u0441\u043f\u043e\u043a\u043e\u0438\u0442\u044c\u00bb \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_15d
    const-string v1, "Call Overlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    const-string v0, "\u041f\u0430\u043d\u0435\u043b\u044c \u0437\u0432\u043e\u043d\u043a\u0430"

    return-object v0

    :cond_168
    const-string v1, "Show in-game call banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0432\u0445\u043e\u0434\u044f\u0449\u0438\u0439 \u0437\u0432\u043e\u043d\u043e\u043a \u043f\u043e\u0432\u0435\u0440\u0445 \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_173
    const-string v1, "No action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    const-string v0, "\u0411\u0435\u0437 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u044f"

    return-object v0

    :cond_17e
    const-string v1, "Auto answer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_189

    const-string v0, "\u041e\u0442\u0432\u0435\u0442\u0438\u0442\u044c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"

    return-object v0

    :cond_189
    const-string v1, "Auto reject"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_194

    const-string v0, "\u041e\u0442\u043a\u043b\u043e\u043d\u0438\u0442\u044c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"

    return-object v0

    :cond_194
    const-string v1, "Incoming Calls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19f

    const-string v0, "\u0412\u0445\u043e\u0434\u044f\u0449\u0438\u0435 \u0437\u0432\u043e\u043d\u043a\u0438"

    return-object v0

    :cond_19f
    const-string v1, "No change"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    const-string v0, "\u041d\u0435 \u0438\u0437\u043c\u0435\u043d\u044f\u0442\u044c"

    return-object v0

    :cond_1aa
    const-string v1, "Ringer Mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b5

    const-string v0, "\u0420\u0435\u0436\u0438\u043c \u0437\u0432\u043e\u043d\u043a\u0430"

    return-object v0

    :cond_1b5
    const-string v1, "Block 3-Finger Screenshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    const-string v0, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0441\u043a\u0440\u0438\u043d\u0448\u043e\u0442 \u0442\u0440\u0435\u043c\u044f \u043f\u0430\u043b\u044c\u0446\u0430\u043c\u0438"

    return-object v0

    :cond_1c0
    const-string v1, "Prevent accidental screenshot gesture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    const-string v0, "\u041f\u0440\u0435\u0434\u043e\u0442\u0432\u0440\u0430\u0449\u0430\u0442\u044c \u0441\u043b\u0443\u0447\u0430\u0439\u043d\u044b\u0435 \u0441\u043d\u0438\u043c\u043a\u0438 \u044d\u043a\u0440\u0430\u043d\u0430 \u0436\u0435\u0441\u0442\u043e\u043c"

    return-object v0

    :cond_1cb
    const-string v1, "Lock Gestures"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0436\u0435\u0441\u0442\u044b"

    return-object v0

    :cond_1d6
    const-string v1, "Block navigation gestures"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e1

    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0436\u0435\u0441\u0442\u044b \u043d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u0438"

    return-object v0

    :cond_1e1
    const-string v1, "Bypass Charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "\u041e\u0431\u0445\u043e\u0434\u043d\u0430\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0430"

    if-eqz v1, :cond_1ec

    return-object v4

    :cond_1ec
    const-string v1, "Power the SoC directly in game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f7

    const-string v0, "\u041f\u0438\u0442\u0430\u0442\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u043d\u0430\u043f\u0440\u044f\u043c\u0443\u044e \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_1f7
    const-string v1, "Idle Bar Opacity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_202

    const-string v0, "\u041d\u0435\u043f\u0440\u043e\u0437\u0440\u0430\u0447\u043d\u043e\u0441\u0442\u044c \u043d\u0435\u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0439 \u043f\u043e\u043b\u043e\u0441\u043a\u0438"

    return-object v0

    :cond_202
    const-string v1, "Sidebar Studio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "\u041e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435 \u0431\u043e\u043a\u043e\u0432\u043e\u0439 \u043f\u0430\u043d\u0435\u043b\u0438"

    if-eqz v1, :cond_20d

    return-object v5

    :cond_20d
    const-string v1, "Shape, position, buttons, theme \u2014 with live preview"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_218

    const-string v0, "\u0424\u043e\u0440\u043c\u0430, \u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435, \u043a\u043d\u043e\u043f\u043a\u0438 \u0438 \u0442\u0435\u043c\u0430 \u0441 \u043f\u0440\u0435\u0434\u043f\u0440\u043e\u0441\u043c\u043e\u0442\u0440\u043e\u043c"

    return-object v0

    :cond_218
    const-string v1, "App Theme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_223

    const-string v0, "\u0422\u0435\u043c\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_223
    const-string v1, "Auto follows the system \u00b7 Light & Dark are forced"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22e

    const-string v0, "\u0410\u0432\u0442\u043e \u2014 \u043f\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u0435; \u0441\u0432\u0435\u0442\u043b\u0430\u044f \u0438 \u0442\u0451\u043c\u043d\u0430\u044f \u2014 \u043d\u0435\u0437\u0430\u0432\u0438\u0441\u0438\u043c\u043e \u043e\u0442 \u043d\u0435\u0451"

    return-object v0

    :cond_22e
    const-string v1, "Auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_239

    const-string v0, "\u0410\u0432\u0442\u043e"

    return-object v0

    :cond_239
    const-string v1, "Light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_244

    const-string v0, "\u0421\u0432\u0435\u0442\u043b\u0430\u044f"

    return-object v0

    :cond_244
    const-string v1, "Dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24f

    const-string v0, "\u0422\u0451\u043c\u043d\u0430\u044f"

    return-object v0

    :cond_24f
    const-string v1, "Appearance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "\u041e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435"

    if-eqz v1, :cond_25a

    return-object v6

    :cond_25a
    const-string v1, "Sidebar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_265

    const-string v0, "\u0411\u043e\u043a\u043e\u0432\u0430\u044f \u043f\u0430\u043d\u0435\u043b\u044c"

    return-object v0

    :cond_265
    const-string v1, "Floating panel over the app you are using"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_270

    const-string v0, "\u041f\u043b\u0430\u0432\u0430\u044e\u0449\u0430\u044f \u043f\u0430\u043d\u0435\u043b\u044c \u043f\u043e\u0432\u0435\u0440\u0445 \u043e\u0442\u043a\u0440\u044b\u0442\u043e\u0433\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_270
    const-string v1, "Games"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27b

    const-string v0, "\u0418\u0433\u0440\u044b"

    return-object v0

    :cond_27b
    const-string v1, "Full game panel \u2014 tiles, thermal, FPS, tuner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_286

    const-string v0, "\u0418\u0433\u0440\u043e\u0432\u0430\u044f \u043f\u0430\u043d\u0435\u043b\u044c: \u043f\u043b\u0438\u0442\u043a\u0438, \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430, FPS \u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430"

    return-object v0

    :cond_286
    const-string v1, "Video players"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_291

    const-string v0, "\u0412\u0438\u0434\u0435\u043e\u043f\u043b\u0435\u0435\u0440\u044b"

    return-object v0

    :cond_291
    const-string v1, "Video toolbox \u2014 frame gen, upscale, picture, Dolby"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29c

    const-string v0, "\u0418\u043d\u0441\u0442\u0440\u0443\u043c\u0435\u043d\u0442\u044b \u0432\u0438\u0434\u0435\u043e: \u0433\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432, \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435, \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0438 Dolby"

    return-object v0

    :cond_29c
    const-string v1, "Other apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a7

    const-string v0, "\u0414\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_2a7
    const-string v1, "App strip only, no panel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b2

    const-string v0, "\u0422\u043e\u043b\u044c\u043a\u043e \u0441\u043f\u0438\u0441\u043e\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439, \u0431\u0435\u0437 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_2b2
    const-string v1, "Number of apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2bd

    const-string v0, "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_2bd
    const-string v1, "App source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c8

    const-string v0, "\u0418\u0441\u0442\u043e\u0447\u043d\u0438\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_2c8
    const-string v1, "All apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d3

    const-string v0, "\u0412\u0441\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_2d3
    const-string v1, "Sort free slots by"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2de

    const-string v0, "\u041f\u043e\u0440\u044f\u0434\u043e\u043a \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u044b\u0445 \u044f\u0447\u0435\u0435\u043a"

    return-object v0

    :cond_2de
    const-string v1, "Most used"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e9

    const-string v0, "\u0427\u0430\u0441\u0442\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u043c\u044b\u0435"

    return-object v0

    :cond_2e9
    const-string v1, "Auto-fill free slots"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f4

    const-string v0, "\u0417\u0430\u043f\u043e\u043b\u043d\u044f\u0442\u044c \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u044b\u0435 \u044f\u0447\u0435\u0439\u043a\u0438"

    return-object v0

    :cond_2f4
    const-string v1, "Fill slots you haven\'t pinned with suggestions"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ff

    const-string v0, "\u041f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0442\u044c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u043d\u0435\u0437\u0430\u043a\u0440\u0435\u043f\u043b\u0451\u043d\u043d\u044b\u0445 \u044f\u0447\u0435\u0435\u043a"

    return-object v0

    :cond_2ff
    const-string v1, "Re-sort when the panel opens"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30a

    const-string v0, "\u041e\u0431\u043d\u043e\u0432\u043b\u044f\u0442\u044c \u043f\u043e\u0440\u044f\u0434\u043e\u043a \u043f\u0440\u0438 \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u0438 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_30a
    const-string v1, "Pinned apps stay put \u2014 only free slots are re-rolled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_315

    const-string v0, "\u0417\u0430\u043a\u0440\u0435\u043f\u043b\u0451\u043d\u043d\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043e\u0441\u0442\u0430\u044e\u0442\u0441\u044f \u043d\u0430 \u043c\u0435\u0441\u0442\u0435; \u043c\u0435\u043d\u044f\u044e\u0442\u0441\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u044b\u0435 \u044f\u0447\u0435\u0439\u043a\u0438"

    return-object v0

    :cond_315
    const-string v1, "Reset dock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_320

    const-string v0, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u0441\u043f\u0438\u0441\u043e\u043a"

    return-object v0

    :cond_320
    const-string v1, "Clear pins and rebuild the strip from scratch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32b

    const-string v0, "\u0421\u043d\u044f\u0442\u044c \u0437\u0430\u043a\u0440\u0435\u043f\u043b\u0435\u043d\u0438\u044f \u0438 \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u0441\u043f\u0438\u0441\u043e\u043a \u0437\u0430\u043d\u043e\u0432\u043e"

    return-object v0

    :cond_32b
    const-string v1, "App strip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_336

    const-string v0, "\u0421\u043f\u0438\u0441\u043e\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_336
    const-string v1, "Customization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33f

    return-object v6

    :cond_33f
    const-string v1, "Show it in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34a

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f\u0445"

    return-object v0

    :cond_34a
    const-string v1, "Done"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "\u0413\u043e\u0442\u043e\u0432\u043e"

    if-eqz v1, :cond_355

    return-object v6

    :cond_355
    const-string v1, "Per-app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_360

    const-string v0, "\u0414\u043b\u044f \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_360
    const-string v1, "Back"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36b

    const-string v0, "\u041d\u0430\u0437\u0430\u0434"

    return-object v0

    :cond_36b
    const-string v1, "System manages thermal profile automatically"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_376

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u0430 \u0432\u044b\u0431\u0438\u0440\u0430\u0435\u0442 \u0442\u0435\u0440\u043c\u043e\u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"

    return-object v0

    :cond_376
    const-string v1, "Follow Global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "\u041a\u0430\u043a \u0432 \u043e\u0431\u0449\u0438\u0445 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445"

    if-eqz v1, :cond_381

    return-object v7

    :cond_381
    const-string v1, "Signal Icons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "\u0417\u043d\u0430\u0447\u043a\u0438 \u043c\u043e\u0431\u0438\u043b\u044c\u043d\u043e\u0439 \u0441\u0435\u0442\u0438"

    if-eqz v1, :cond_38c

    return-object v8

    :cond_38c
    const-string v1, "WiFi Icons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_397

    const-string v0, "\u0417\u043d\u0430\u0447\u043a\u0438 Wi-Fi"

    return-object v0

    :cond_397
    const-string v1, "See all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a2

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u0430\u0442\u044c \u0432\u0441\u0435"

    return-object v0

    :cond_3a2
    const-string v1, "Global Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "\u041e\u0431\u0449\u0438\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    if-eqz v1, :cond_3ad

    return-object v9

    :cond_3ad
    const-string v1, "Global profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b6

    return-object v9

    :cond_3b6
    const-string v1, "Applies system-wide and survives reboot. A per-game profile overrides these values for its session only."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c1

    const-string v0, "\u041f\u0440\u0438\u043c\u0435\u043d\u044f\u0435\u0442\u0441\u044f \u043a\u043e \u0432\u0441\u0435\u0439 \u0441\u0438\u0441\u0442\u0435\u043c\u0435 \u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0435\u0442\u0441\u044f \u043f\u043e\u0441\u043b\u0435 \u043f\u0435\u0440\u0435\u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0438. \u041f\u0440\u043e\u0444\u0438\u043b\u044c \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u043e\u0439 \u0438\u0433\u0440\u044b \u0437\u0430\u043c\u0435\u043d\u044f\u0435\u0442 \u044d\u0442\u0438 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f \u0442\u043e\u043b\u044c\u043a\u043e \u043d\u0430 \u0432\u0440\u0435\u043c\u044f \u0435\u0451 \u0440\u0430\u0431\u043e\u0442\u044b."

    return-object v0

    :cond_3c1
    const-string v1, "Frequencies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3cc

    const-string v0, "\u0427\u0430\u0441\u0442\u043e\u0442\u044b"

    return-object v0

    :cond_3cc
    const-string v1, "Thermal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v9, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430"

    if-eqz v1, :cond_3d7

    return-object v9

    :cond_3d7
    const-string v1, "Charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e2

    const-string v0, "\u0417\u0430\u0440\u044f\u0434\u043a\u0430"

    return-object v0

    :cond_3e2
    const-string v1, "Thermal profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v10, "\u0422\u0435\u0440\u043c\u043e\u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    if-eqz v1, :cond_3ed

    return-object v10

    :cond_3ed
    const-string v1, "Diagnostics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f8

    const-string v0, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430"

    return-object v0

    :cond_3f8
    const-string v1, "GameSpace Diagnostics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_403

    const-string v0, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430 \u0438\u0433\u0440\u043e\u0432\u043e\u0433\u043e \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0430"

    return-object v0

    :cond_403
    const-string v1, "All systems operational"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40e

    const-string v0, "\u0412\u0441\u0435 \u0441\u0438\u0441\u0442\u0435\u043c\u044b \u0440\u0430\u0431\u043e\u0442\u0430\u044e\u0442"

    return-object v0

    :cond_40e
    const-string v1, "Attention needed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_419

    const-string v0, "\u0422\u0440\u0435\u0431\u0443\u0435\u0442\u0441\u044f \u0432\u043d\u0438\u043c\u0430\u043d\u0438\u0435"

    return-object v0

    :cond_419
    const-string v1, "Core Services"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_424

    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u044b\u0435 \u0441\u043b\u0443\u0436\u0431\u044b"

    return-object v0

    :cond_424
    const-string v1, "Device Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42f

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    return-object v0

    :cond_42f
    const-string v1, "CPU clusters"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v11, "\u041a\u043b\u0430\u0441\u0442\u0435\u0440\u044b CPU"

    if-eqz v1, :cond_43a

    return-object v11

    :cond_43a
    const-string v1, "CPU Clusters"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_443

    return-object v11

    :cond_443
    const-string v1, "Thermal zones"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44e

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u043d\u044b\u0435 \u0434\u0430\u0442\u0447\u0438\u043a\u0438"

    return-object v0

    :cond_44e
    const-string v1, "GPU node"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_459

    const-string v0, "\u0423\u0437\u0435\u043b GPU"

    return-object v0

    :cond_459
    const-string v1, "AOSP color fallback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_464

    const-string v0, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u044b\u0435 \u0446\u0432\u0435\u0442\u0430 AOSP"

    return-object v0

    :cond_464
    const-string v1, "Color mode map"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46f

    const-string v0, "\u041a\u0430\u0440\u0442\u0430 \u0446\u0432\u0435\u0442\u043e\u0432\u044b\u0445 \u0440\u0435\u0436\u0438\u043c\u043e\u0432"

    return-object v0

    :cond_46f
    const-string v1, "SoC platform"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47a

    const-string v0, "\u041f\u043b\u0430\u0442\u0444\u043e\u0440\u043c\u0430 SoC"

    return-object v0

    :cond_47a
    const-string v1, "Model"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_485

    const-string v0, "\u041c\u043e\u0434\u0435\u043b\u044c"

    return-object v0

    :cond_485
    const-string v1, "Platform"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_490

    const-string v0, "\u041f\u043b\u0430\u0442\u0444\u043e\u0440\u043c\u0430"

    return-object v0

    :cond_490
    const-string v1, "Node Checks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49b

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0445 \u0443\u0437\u043b\u043e\u0432"

    return-object v0

    :cond_49b
    const-string v1, "Copy report"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a6

    const-string v0, "\u041a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043e\u0442\u0447\u0451\u0442"

    return-object v0

    :cond_4a6
    const-string v1, "Tap the copy icon to send this report to a developer."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b1

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0437\u043d\u0430\u0447\u043e\u043a \u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u044f, \u0447\u0442\u043e\u0431\u044b \u043f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f \u043e\u0442\u0447\u0451\u0442\u043e\u043c \u0441 \u0440\u0430\u0437\u0440\u0430\u0431\u043e\u0442\u0447\u0438\u043a\u043e\u043c."

    return-object v0

    :cond_4b1
    const-string v1, "Still collecting diagnostics\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4bc

    const-string v0, "\u0421\u0431\u043e\u0440 \u0434\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0445 \u0434\u0430\u043d\u043d\u044b\u0445\u2026"

    return-object v0

    :cond_4bc
    const-string v1, "Diagnostics copied \u2014 paste anywhere to share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c7

    const-string v0, "\u0414\u0438\u0430\u0433\u043d\u043e\u0441\u0442\u0438\u043a\u0430 \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0430 \u2014 \u0432\u0441\u0442\u0430\u0432\u044c\u0442\u0435 \u0442\u0435\u043a\u0441\u0442, \u0447\u0442\u043e\u0431\u044b \u043f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f"

    return-object v0

    :cond_4c7
    const-string v1, " core services \u00b7 "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d2

    const-string v0, " \u043e\u0441\u043d\u043e\u0432\u043d\u044b\u0445 \u0441\u043b\u0443\u0436\u0431 \u00b7 "

    return-object v0

    :cond_4d2
    const-string v1, " checks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4dd

    const-string v0, " \u043f\u0440\u043e\u0432\u0435\u0440\u043e\u043a"

    return-object v0

    :cond_4dd
    const-string v1, " entries"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e8

    const-string v0, " \u0437\u0430\u043f\u0438\u0441\u0435\u0439"

    return-object v0

    :cond_4e8
    const-string v1, "present"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f3

    const-string v0, "\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d"

    return-object v0

    :cond_4f3
    const-string v1, "missing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4fe

    const-string v0, "\u043e\u0442\u0441\u0443\u0442\u0441\u0442\u0432\u0443\u0435\u0442"

    return-object v0

    :cond_4fe
    const-string v1, "NOT FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_509

    const-string v0, "\u041d\u0415 \u041d\u0410\u0419\u0414\u0415\u041d\u041e"

    return-object v0

    :cond_509
    const-string v1, "Activate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v11, "\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    if-eqz v1, :cond_514

    return-object v11

    :cond_514
    const-string v1, "Active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51f

    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u0435\u043d"

    return-object v0

    :cond_51f
    const-string v1, "Add Filter  +"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52a

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0444\u0438\u043b\u044c\u0442\u0440 +"

    return-object v0

    :cond_52a
    const-string v1, "Add GPU level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_535

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0443\u0440\u043e\u0432\u0435\u043d\u044c GPU"

    return-object v0

    :cond_535
    const-string v1, "Add a title to build your horizontal command center"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_540

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u044c\u0442\u0435 \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a \u0434\u043b\u044f \u0433\u043e\u0440\u0438\u0437\u043e\u043d\u0442\u0430\u043b\u044c\u043d\u043e\u0439 \u043f\u0430\u043d\u0435\u043b\u0438 \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_540
    const-string v1, "Add app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54b

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_54b
    const-string v1, "Add game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_556

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0438\u0433\u0440\u0443"

    return-object v0

    :cond_556
    const-string v1, "Add level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_561

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0443\u0440\u043e\u0432\u0435\u043d\u044c"

    return-object v0

    :cond_561
    const-string v1, "Add tier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56c

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0441\u0442\u0443\u043f\u0435\u043d\u044c"

    return-object v0

    :cond_56c
    const-string v1, "All"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_577

    const-string v0, "\u0412\u0441\u0435"

    return-object v0

    :cond_577
    const-string v1, "All apps added"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_582

    const-string v0, "\u0412\u0441\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u044b"

    return-object v0

    :cond_582
    const-string v1, "All profiles deleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58d

    const-string v0, "\u0412\u0441\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u0438 \u0443\u0434\u0430\u043b\u0435\u043d\u044b"

    return-object v0

    :cond_58d
    const-string v1, "All thermal profiles reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_598

    const-string v0, "\u0412\u0441\u0435 \u0442\u0435\u0440\u043c\u043e\u043f\u0440\u043e\u0444\u0438\u043b\u0438 \u0441\u0431\u0440\u043e\u0448\u0435\u043d\u044b"

    return-object v0

    :cond_598
    const-string v1, "All throttle levels on CPU clusters and GPU will be removed."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a3

    const-string v0, "\u0412\u0441\u0435 \u0443\u0440\u043e\u0432\u043d\u0438 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f \u0447\u0430\u0441\u0442\u043e\u0442 CPU \u0438 GPU \u0431\u0443\u0434\u0443\u0442 \u0443\u0434\u0430\u043b\u0435\u043d\u044b."

    return-object v0

    :cond_5a3
    const-string v1, "Alphabetical"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5ae

    const-string v0, "\u041f\u043e \u0430\u043b\u0444\u0430\u0432\u0438\u0442\u0443"

    return-object v0

    :cond_5ae
    const-string v1, "Always"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b9

    const-string v0, "\u0412\u0441\u0435\u0433\u0434\u0430"

    return-object v0

    :cond_5b9
    const-string v1, "Amount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v12, "\u0421\u0438\u043b\u0430 \u044d\u0444\u0444\u0435\u043a\u0442\u0430"

    if-eqz v1, :cond_5c4

    return-object v12

    :cond_5c4
    const-string v1, "App"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5cf

    const-string v0, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_5cf
    const-string v1, "Apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5da

    const-string v0, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_5da
    const-string v1, "Apps that never get a sidebar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e5

    const-string v0, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f, \u0432 \u043a\u043e\u0442\u043e\u0440\u044b\u0445 \u0431\u043e\u043a\u043e\u0432\u0430\u044f \u043f\u0430\u043d\u0435\u043b\u044c \u043d\u0435 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0435\u0442\u0441\u044f"

    return-object v0

    :cond_5e5
    const-string v1, "Apps you opened last come first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f0

    const-string v0, "\u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u043d\u0435\u0434\u0430\u0432\u043d\u043e \u043e\u0442\u043a\u0440\u044b\u0442\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_5f0
    const-string v1, "At least one tier is required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5fb

    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0445\u043e\u0442\u044f \u0431\u044b \u043e\u0434\u043d\u0430 \u0441\u0442\u0443\u043f\u0435\u043d\u044c"

    return-object v0

    :cond_5fb
    const-string v1, "Audio Source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_606

    const-string v0, "\u0418\u0441\u0442\u043e\u0447\u043d\u0438\u043a \u0437\u0432\u0443\u043a\u0430"

    return-object v0

    :cond_606
    const-string v1, "Auto (recommended)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_611

    const-string v0, "\u0410\u0432\u0442\u043e (\u0440\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u0442\u0441\u044f)"

    return-object v0

    :cond_611
    const-string v1, "Auto-fetch Banners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61c

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u0442\u044c \u043e\u0431\u043b\u043e\u0436\u043a\u0438 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438"

    return-object v0

    :cond_61c
    const-string v1, "Auto-hide on idle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_627

    const-string v0, "\u0421\u043a\u0440\u044b\u0432\u0430\u0442\u044c \u043f\u0440\u0438 \u0431\u0435\u0437\u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0438"

    return-object v0

    :cond_627
    const-string v1, "Available freqs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_632

    const-string v0, "\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u044b\u0435 \u0447\u0430\u0441\u0442\u043e\u0442\u044b"

    return-object v0

    :cond_632
    const-string v1, "Background tint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63d

    const-string v0, "\u0426\u0432\u0435\u0442 \u0444\u043e\u043d\u0430"

    return-object v0

    :cond_63d
    const-string v1, "Backlight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_648

    const-string v0, "\u041f\u043e\u0434\u0441\u0432\u0435\u0442\u043a\u0430"

    return-object v0

    :cond_648
    const-string v1, "Balanced"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_653

    const-string v0, "\u0421\u0431\u0430\u043b\u0430\u043d\u0441\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u044b\u0439"

    return-object v0

    :cond_653
    const-string v1, "Balanced Gaming"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65e

    const-string v0, "\u0421\u0431\u0430\u043b\u0430\u043d\u0441\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u044b\u0439 \u0438\u0433\u0440\u043e\u0432\u043e\u0439"

    return-object v0

    :cond_65e
    const-string v1, "Banner Source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_669

    const-string v0, "\u0418\u0441\u0442\u043e\u0447\u043d\u0438\u043a \u043e\u0431\u043b\u043e\u0436\u0435\u043a"

    return-object v0

    :cond_669
    const-string v1, "Bar height"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_674

    const-string v0, "\u0412\u044b\u0441\u043e\u0442\u0430 \u043f\u043e\u043b\u043e\u0441\u043a\u0438"

    return-object v0

    :cond_674
    const-string v1, "Base curves"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67f

    const-string v0, "\u0411\u0430\u0437\u043e\u0432\u044b\u0435 \u043a\u0440\u0438\u0432\u044b\u0435"

    return-object v0

    :cond_67f
    const-string v1, "Base dir"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68a

    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u043e\u0439 \u043a\u0430\u0442\u0430\u043b\u043e\u0433"

    return-object v0

    :cond_68a
    const-string v1, "Battery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_695

    const-string v0, "\u0411\u0430\u0442\u0430\u0440\u0435\u044f"

    return-object v0

    :cond_695
    const-string v1, "Battery Saver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a0

    const-string v0, "\u042d\u043a\u043e\u043d\u043e\u043c\u0438\u044f \u044d\u043d\u0435\u0440\u0433\u0438\u0438"

    return-object v0

    :cond_6a0
    const-string v1, "Battery capacity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6ab

    const-string v0, "\u0401\u043c\u043a\u043e\u0441\u0442\u044c \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_6ab
    const-string v1, "Battery current"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b6

    const-string v0, "\u0422\u043e\u043a \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_6b6
    const-string v1, "Battery temp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c1

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_6c1
    const-string v1, "Battery voltage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6cc

    const-string v0, "\u041d\u0430\u043f\u0440\u044f\u0436\u0435\u043d\u0438\u0435 \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_6cc
    const-string v1, "Black & White"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d7

    const-string v0, "\u0427\u0451\u0440\u043d\u043e-\u0431\u0435\u043b\u044b\u0439"

    return-object v0

    :cond_6d7
    const-string v1, "Black point"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e2

    const-string v0, "\u0422\u043e\u0447\u043a\u0430 \u0447\u0451\u0440\u043d\u043e\u0433\u043e"

    return-object v0

    :cond_6e2
    const-string v1, "Blade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6ed

    const-string v0, "\u041b\u0435\u0437\u0432\u0438\u0435"

    return-object v0

    :cond_6ed
    const-string v1, "Blank \u2014 pick a preset or import"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f8

    const-string v0, "\u041f\u0443\u0441\u0442\u043e \u2014 \u0432\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0448\u0430\u0431\u043b\u043e\u043d \u0438\u043b\u0438 \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u0443\u0439\u0442\u0435"

    return-object v0

    :cond_6f8
    const-string v1, "Bloom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v13, "\u0421\u0432\u0435\u0447\u0435\u043d\u0438\u0435"

    if-eqz v1, :cond_703

    return-object v13

    :cond_703
    const-string v1, "Bloom threshold"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70e

    const-string v0, "\u041f\u043e\u0440\u043e\u0433 \u0441\u0432\u0435\u0447\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_70e
    const-string v1, "Boost"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_719

    const-string v0, "\u0423\u0441\u0438\u043b\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_719
    const-string v1, "Boost saturation for this game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_724

    const-string v0, "\u0423\u0441\u0438\u043b\u0438\u0442\u044c \u043d\u0430\u0441\u044b\u0449\u0435\u043d\u043d\u043e\u0441\u0442\u044c \u0432 \u044d\u0442\u043e\u0439 \u0438\u0433\u0440\u0435"

    return-object v0

    :cond_724
    const-string v1, "Bottom bar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72f

    const-string v0, "\u041d\u0438\u0436\u043d\u044f\u044f \u043f\u0430\u043d\u0435\u043b\u044c"

    return-object v0

    :cond_72f
    const-string v1, "Brightness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73a

    const-string v0, "\u042f\u0440\u043a\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_73a
    const-string v1, "Bubble / Freeform"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_745

    const-string v0, "\u041f\u0443\u0437\u044b\u0440\u0451\u043a / \u043f\u043b\u0430\u0432\u0430\u044e\u0449\u0435\u0435 \u043e\u043a\u043d\u043e"

    return-object v0

    :cond_745
    const-string v1, "Busy %"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_750

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430, %"

    return-object v0

    :cond_750
    const-string v1, "Bypass charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_759

    return-object v4

    :cond_759
    const-string v1, "COLOR & COMPOSITION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_764

    const-string v0, "\u0426\u0412\u0415\u0422 \u0418 \u041a\u041e\u041c\u041f\u041e\u0417\u0418\u0426\u0418\u042f"

    return-object v0

    :cond_764
    const-string v1, "COOL & QUIET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76f

    const-string v0, "\u041f\u0420\u041e\u0425\u041b\u0410\u0414\u041d\u041e \u0418 \u0422\u0418\u0425\u041e"

    return-object v0

    :cond_76f
    const-string v1, "CPU range"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77a

    const-string v0, "\u0414\u0438\u0430\u043f\u0430\u0437\u043e\u043d CPU"

    return-object v0

    :cond_77a
    const-string v1, "CPU temp paths"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_785

    const-string v0, "\u041f\u0443\u0442\u0438 \u0434\u0430\u0442\u0447\u0438\u043a\u043e\u0432 CPU"

    return-object v0

    :cond_785
    const-string v1, "GPU temp paths"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_790

    const-string v0, "\u041f\u0443\u0442\u0438 \u0434\u0430\u0442\u0447\u0438\u043a\u043e\u0432 GPU"

    return-object v0

    :cond_790
    const-string v1, "CPU Temp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79b

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 CPU"

    return-object v0

    :cond_79b
    const-string v1, "GPU Temp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a6

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 GPU"

    return-object v0

    :cond_7a6
    const-string v1, "Cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b1

    const-string v0, "\u041e\u0442\u043c\u0435\u043d\u0430"

    return-object v0

    :cond_7b1
    const-string v1, "Camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7bc

    const-string v0, "\u041a\u0430\u043c\u0435\u0440\u0430"

    return-object v0

    :cond_7bc
    const-string v1, "Capacity %"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c7

    const-string v0, "\u0417\u0430\u0440\u044f\u0434, %"

    return-object v0

    :cond_7c7
    const-string v1, "Casual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d2

    const-string v0, "\u041f\u043e\u0432\u0441\u0435\u0434\u043d\u0435\u0432\u043d\u044b\u0439"

    return-object v0

    :cond_7d2
    const-string v1, "Charge range: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7dd

    const-string v0, "\u0414\u0438\u0430\u043f\u0430\u0437\u043e\u043d \u0437\u0430\u0440\u044f\u0434\u043a\u0438: "

    return-object v0

    :cond_7dd
    const-string v1, "Chart Options"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e8

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0433\u0440\u0430\u0444\u0438\u043a\u0430"

    return-object v0

    :cond_7e8
    const-string v1, "Chevron"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f3

    const-string v0, "\u0428\u0435\u0432\u0440\u043e\u043d"

    return-object v0

    :cond_7f3
    const-string v1, "Chevron glyph"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7fe

    const-string v0, "\u0417\u043d\u0430\u0447\u043e\u043a \u0448\u0435\u0432\u0440\u043e\u043d\u0430"

    return-object v0

    :cond_7fe
    const-string v1, "Cinema"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_809

    const-string v0, "\u041a\u0438\u043d\u043e\u0442\u0435\u0430\u0442\u0440"

    return-object v0

    :cond_809
    const-string v1, "Circle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_814

    const-string v0, "\u041a\u0440\u0443\u0433"

    return-object v0

    :cond_814
    const-string v1, "Clarity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81f

    const-string v0, "\u0427\u0451\u0442\u043a\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_81f
    const-string v1, "Classical Monitor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82a

    const-string v0, "\u041a\u043b\u0430\u0441\u0441\u0438\u0447\u0435\u0441\u043a\u0438\u0439 \u043c\u043e\u043d\u0438\u0442\u043e\u0440"

    return-object v0

    :cond_82a
    const-string v1, "Clear"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_835

    const-string v0, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u044c"

    return-object v0

    :cond_835
    const-string v1, "Clear all curves?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_840

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u0435 \u043a\u0440\u0438\u0432\u044b\u0435?"

    return-object v0

    :cond_840
    const-string v1, "Clear current curves"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84b

    const-string v0, "\u041e\u0447\u0438\u0441\u0442\u0438\u0442\u044c \u0442\u0435\u043a\u0443\u0449\u0438\u0435 \u043a\u0440\u0438\u0432\u044b\u0435"

    return-object v0

    :cond_84b
    const-string v1, "Close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_856

    const-string v0, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    return-object v0

    :cond_856
    const-string v1, "Collecting GPU data\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_861

    const-string v0, "\u0421\u0431\u043e\u0440 \u0434\u0430\u043d\u043d\u044b\u0445 GPU\u2026"

    return-object v0

    :cond_861
    const-string v1, "Color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86c

    const-string v0, "\u0426\u0432\u0435\u0442"

    return-object v0

    :cond_86c
    const-string v1, "Color filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_877

    const-string v0, "\u0426\u0432\u0435\u0442\u043e\u0432\u043e\u0439 \u0444\u0438\u043b\u044c\u0442\u0440"

    return-object v0

    :cond_877
    const-string v1, "Colorblind"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_882

    const-string v0, "\u041a\u043e\u0440\u0440\u0435\u043a\u0446\u0438\u044f \u0434\u0430\u043b\u044c\u0442\u043e\u043d\u0438\u0437\u043c\u0430"

    return-object v0

    :cond_882
    const-string v1, "Colour enhance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "\u0423\u043b\u0443\u0447\u0448\u0435\u043d\u0438\u0435 \u0446\u0432\u0435\u0442\u0430"

    if-eqz v1, :cond_88d

    return-object v4

    :cond_88d
    const-string v1, "Compete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_898

    const-string v0, "\u0421\u043e\u0440\u0435\u0432\u043d\u043e\u0432\u0430\u043d\u0438\u0435"

    return-object v0

    :cond_898
    const-string v1, "Container corner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a3

    const-string v0, "\u0421\u043a\u0440\u0443\u0433\u043b\u0435\u043d\u0438\u0435 \u043a\u043e\u043d\u0442\u0435\u0439\u043d\u0435\u0440\u0430"

    return-object v0

    :cond_8a3
    const-string v1, "Contrast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8ae

    const-string v0, "\u041a\u043e\u043d\u0442\u0440\u0430\u0441\u0442"

    return-object v0

    :cond_8ae
    const-string v1, "Cool & Battery-Friendly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b9

    const-string v0, "\u041f\u0440\u043e\u0445\u043b\u0430\u0434\u0430 \u0438 \u044d\u043a\u043e\u043d\u043e\u043c\u0438\u044f \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_8b9
    const-string v1, "Cool and Quiet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c4

    const-string v0, "\u041f\u0440\u043e\u0445\u043b\u0430\u0434\u043d\u043e \u0438 \u0442\u0438\u0445\u043e"

    return-object v0

    :cond_8c4
    const-string v1, "Cooler"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8cf

    const-string v0, "\u041e\u0445\u043b\u0430\u0436\u0434\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_8cf
    const-string v1, "Corner blades"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8da

    const-string v0, "\u0423\u0433\u043b\u043e\u0432\u044b\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u044b"

    return-object v0

    :cond_8da
    const-string v1, "Corner size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e5

    const-string v0, "\u0420\u0430\u0437\u043c\u0435\u0440 \u0443\u0433\u043b\u043e\u0432"

    return-object v0

    :cond_8e5
    const-string v1, "Create"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f0

    const-string v0, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c"

    return-object v0

    :cond_8f0
    const-string v1, "Create Custom Device Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8fb

    const-string v0, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    return-object v0

    :cond_8fb
    const-string v1, "Create and edit the charge-current profiles offered above"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_906

    const-string v0, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u0438 \u0438\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u044b\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u0438 \u0442\u043e\u043a\u0430 \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    return-object v0

    :cond_906
    const-string v1, "Create custom profile\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_911

    const-string v0, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u0441\u0432\u043e\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c\u2026"

    return-object v0

    :cond_911
    const-string v1, "Create profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91c

    const-string v0, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    return-object v0

    :cond_91c
    const-string v1, "Current Game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_927

    const-string v0, "\u0422\u0435\u043a\u0443\u0449\u0430\u044f \u0438\u0433\u0440\u0430"

    return-object v0

    :cond_927
    const-string v1, "Curve generated from wizard settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_932

    const-string v0, "\u041a\u0440\u0438\u0432\u0430\u044f \u0441\u043e\u0437\u0434\u0430\u043d\u0430 \u043f\u043e \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u043c \u043c\u0430\u0441\u0442\u0435\u0440\u0430"

    return-object v0

    :cond_932
    const-string v1, "Curves are created in Game Space \u2192 Settings \u2192 Charging profiles."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93d

    const-string v0, "\u041a\u0440\u0438\u0432\u044b\u0435 \u0441\u043e\u0437\u0434\u0430\u044e\u0442\u0441\u044f \u0432 \u0438\u0433\u0440\u043e\u0432\u043e\u043c \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0435 \u2192 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u041f\u0440\u043e\u0444\u0438\u043b\u0438 \u0437\u0430\u0440\u044f\u0434\u043a\u0438."

    return-object v0

    :cond_93d
    const-string v1, "Curves cleared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_948

    const-string v0, "\u041a\u0440\u0438\u0432\u044b\u0435 \u043e\u0447\u0438\u0449\u0435\u043d\u044b"

    return-object v0

    :cond_948
    const-string v1, "Custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_953

    const-string v0, "\u0421\u0432\u043e\u0439"

    return-object v0

    :cond_953
    const-string v1, "Custom Device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95e

    const-string v0, "\u0421\u0432\u043e\u0451 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e"

    return-object v0

    :cond_95e
    const-string v1, "Custom Profile "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_969

    const-string v0, "\u0421\u0432\u043e\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c "

    return-object v0

    :cond_969
    const-string v1, "Custom color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_974

    const-string v0, "\u0421\u0432\u043e\u0439 \u0446\u0432\u0435\u0442"

    return-object v0

    :cond_974
    const-string v1, "Custom wizard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v14, "\u041c\u0430\u0441\u0442\u0435\u0440 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    if-eqz v1, :cond_97f

    return-object v14

    :cond_97f
    const-string v1, "Customize rail orientation, shapes, icon styles, and colors"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98a

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u043e\u0440\u0438\u0435\u043d\u0442\u0430\u0446\u0438\u044e, \u0444\u043e\u0440\u043c\u0443, \u0437\u043d\u0430\u0447\u043a\u0438 \u0438 \u0446\u0432\u0435\u0442\u0430 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_98a
    const-string v1, "DDR temp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_995

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 DDR"

    return-object v0

    :cond_995
    const-string v1, "DOLBY PER-GAME PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v15, "\u041f\u0420\u041e\u0424\u0418\u041b\u042c DOLBY \u0414\u041b\u042f \u0418\u0413\u0420\u042b"

    if-eqz v1, :cond_9a0

    return-object v15

    :cond_9a0
    const-string v1, "Dark Game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9ab

    const-string v0, "\u0422\u0451\u043c\u043d\u0430\u044f \u0438\u0433\u0440\u0430"

    return-object v0

    :cond_9ab
    const-string v1, "Dark glass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b6

    const-string v0, "\u0422\u0451\u043c\u043d\u043e\u0435 \u0441\u0442\u0435\u043a\u043b\u043e"

    return-object v0

    :cond_9b6
    const-string v1, "Data Transfer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c1

    const-string v0, "\u041f\u0435\u0440\u0435\u0434\u0430\u0447\u0430 \u0434\u0430\u043d\u043d\u044b\u0445"

    return-object v0

    :cond_9c1
    const-string v1, "Default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v16, "\u041f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e"

    if-eqz v1, :cond_9cc

    return-object v16

    :cond_9cc
    const-string v1, "Default Target"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d7

    const-string v0, "\u0426\u0435\u043b\u044c \u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e"

    return-object v0

    :cond_9d7
    const-string v1, "Default system build properties will be reported to this game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e2

    const-string v0, "\u0418\u0433\u0440\u0430 \u0431\u0443\u0434\u0435\u0442 \u043f\u043e\u043b\u0443\u0447\u0430\u0442\u044c \u043d\u0430\u0441\u0442\u043e\u044f\u0449\u0438\u0435 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0435 \u0441\u0432\u0435\u0434\u0435\u043d\u0438\u044f \u043e\u0431 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0435"

    return-object v0

    :cond_9e2
    const-string v1, "Delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v17, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c"

    if-eqz v1, :cond_9ed

    return-object v17

    :cond_9ed
    const-string v1, "Delete Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v18, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    if-eqz v1, :cond_9f8

    return-object v18

    :cond_9f8
    const-string v1, "Delete all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a03

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u0435"

    return-object v0

    :cond_a03
    const-string v1, "Delete all profiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0e

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u0438"

    return-object v0

    :cond_a0e
    const-string v1, "Delete all profiles?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a19

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u0438?"

    return-object v0

    :cond_a19
    const-string v1, "Details"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a24

    const-string v0, "\u041f\u043e\u0434\u0440\u043e\u0431\u043d\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_a24
    const-string v1, "Device will be kept around this temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2f

    const-string v0, "\u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u0431\u0443\u0434\u0435\u0442 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0442\u044c\u0441\u044f \u043f\u0440\u0438\u043c\u0435\u0440\u043d\u043e \u043f\u0440\u0438 \u044d\u0442\u043e\u0439 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0435"

    return-object v0

    :cond_a2f
    const-string v1, "Disable HW overlays for this game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3a

    const-string v0, "\u041e\u0442\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0430\u043f\u043f\u0430\u0440\u0430\u0442\u043d\u044b\u0435 \u043d\u0430\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_a3a
    const-string v1, "Disabled (Use Real Device Properties)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a45

    const-string v0, "\u0412\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u043e (\u043d\u0430\u0441\u0442\u043e\u044f\u0449\u0438\u0435 \u0441\u0432\u0435\u0434\u0435\u043d\u0438\u044f \u043e\u0431 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0435)"

    return-object v0

    :cond_a45
    const-string v1, "Display style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a50

    const-string v0, "\u0421\u0442\u0438\u043b\u044c \u043e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_a50
    const-string v1, "Divider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5b

    const-string v0, "\u0420\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u044c"

    return-object v0

    :cond_a5b
    const-string v1, "Dock reset \u2014 hidden apps restored"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a66

    const-string v0, "\u0421\u043f\u0438\u0441\u043e\u043a \u0441\u0431\u0440\u043e\u0448\u0435\u043d, \u0441\u043a\u0440\u044b\u0442\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u044b"

    return-object v0

    :cond_a66
    const-string v1, "Dolby Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a71

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c Dolby"

    return-object v0

    :cond_a71
    const-string v1, "Dot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7c

    const-string v0, "\u0422\u043e\u0447\u043a\u0430"

    return-object v0

    :cond_a7c
    const-string v1, "Drag a tile here to remove it from the panel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a87

    const-string v0, "\u041f\u0435\u0440\u0435\u0442\u0430\u0449\u0438\u0442\u0435 \u043f\u043b\u0438\u0442\u043a\u0443 \u0441\u044e\u0434\u0430, \u0447\u0442\u043e\u0431\u044b \u0443\u0431\u0440\u0430\u0442\u044c \u0435\u0451 \u0441 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_a87
    const-string v1, "Drag with one or more fingers. The View reads panel history, so this shows the true report rate (not the refresh rate)."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a92

    const-string v0, "\u041f\u0440\u043e\u0432\u043e\u0434\u0438\u0442\u0435 \u043e\u0434\u043d\u0438\u043c \u0438\u043b\u0438 \u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u0438\u043c\u0438 \u043f\u0430\u043b\u044c\u0446\u0430\u043c\u0438. \u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u043e\u043f\u0440\u043e\u0441\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430, \u0430 \u043d\u0435 \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u044d\u043a\u0440\u0430\u043d\u0430."

    return-object v0

    :cond_a92
    const-string v1, "Duplicate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9d

    const-string v0, "\u0414\u0443\u0431\u043b\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    return-object v0

    :cond_a9d
    const-string v1, "Dynamic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa8

    const-string v0, "\u0414\u0438\u043d\u0430\u043c\u0438\u0447\u0435\u0441\u043a\u0438\u0439"

    return-object v0

    :cond_aa8
    const-string v1, "EMERGENCY ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab3

    const-string v0, "\u0422\u041e\u041b\u042c\u041a\u041e \u0410\u0412\u0410\u0420\u0418\u0419\u041d\u0410\u042f \u0417\u0410\u0429\u0418\u0422\u0410"

    return-object v0

    :cond_ab3
    const-string v1, "Edge (chrome)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_abe

    const-string v0, "\u041a\u0440\u0430\u0439 (\u0445\u0440\u043e\u043c)"

    return-object v0

    :cond_abe
    const-string v1, "Edit Charging Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v19, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    if-eqz v1, :cond_ac9

    return-object v19

    :cond_ac9
    const-string v1, "Edit Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad4

    const-string v0, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    return-object v0

    :cond_ad4
    const-string v1, "Edit tiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_adf

    const-string v0, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u043f\u043b\u0438\u0442\u043a\u0438"

    return-object v0

    :cond_adf
    const-string v1, "Emergency Protection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aea

    const-string v0, "\u0410\u0432\u0430\u0440\u0438\u0439\u043d\u0430\u044f \u0437\u0430\u0449\u0438\u0442\u0430"

    return-object v0

    :cond_aea
    const-string v1, "Emergency resume temp must be below suspend temp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af5

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0432\u043e\u0437\u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u0434\u043e\u043b\u0436\u043d\u0430 \u0431\u044b\u0442\u044c \u043d\u0438\u0436\u0435 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u044b \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438"

    return-object v0

    :cond_af5
    const-string v1, "Enable Game Device Spoofing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b00

    const-string v0, "\u041f\u043e\u0434\u043c\u0435\u043d\u044f\u0442\u044c \u043c\u043e\u0434\u0435\u043b\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430 \u0432 \u0438\u0433\u0440\u0430\u0445"

    return-object v0

    :cond_b00
    const-string v1, "Estimated result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0b

    const-string v0, "\u041e\u0436\u0438\u0434\u0430\u0435\u043c\u044b\u0439 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442"

    return-object v0

    :cond_b0b
    const-string v1, "Excluded apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b16

    const-string v0, "\u0418\u0441\u043a\u043b\u044e\u0447\u0451\u043d\u043d\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_b16
    const-string v1, "Expand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b21

    const-string v0, "\u0420\u0430\u0437\u0432\u0435\u0440\u043d\u0443\u0442\u044c"

    return-object v0

    :cond_b21
    const-string v1, "Exposure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2c

    const-string v0, "\u042d\u043a\u0441\u043f\u043e\u0437\u0438\u0446\u0438\u044f"

    return-object v0

    :cond_b2c
    const-string v1, "Extrapolation factor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b37

    const-string v0, "\u041a\u043e\u044d\u0444\u0444\u0438\u0446\u0438\u0435\u043d\u0442 \u044d\u043a\u0441\u0442\u0440\u0430\u043f\u043e\u043b\u044f\u0446\u0438\u0438"

    return-object v0

    :cond_b37
    const-string v1, "Extreme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b42

    const-string v0, "\u042d\u043a\u0441\u0442\u0440\u0435\u043c\u0430\u043b\u044c\u043d\u044b\u0439"

    return-object v0

    :cond_b42
    const-string v1, "FPS stats"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4b

    return-object v2

    :cond_b4b
    const-string v1, "FRAME GENERATION (AFME)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b56

    const-string v0, "\u0413\u0415\u041d\u0415\u0420\u0410\u0426\u0418\u042f \u041a\u0410\u0414\u0420\u041e\u0412 (AFME)"

    return-object v0

    :cond_b56
    const-string v1, "Fast Charge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b61

    const-string v0, "\u0411\u044b\u0441\u0442\u0440\u0430\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0430"

    return-object v0

    :cond_b61
    const-string v1, "Faster"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6c

    const-string v0, "\u0411\u044b\u0441\u0442\u0440\u0435\u0435"

    return-object v0

    :cond_b6c
    const-string v1, "Film"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b77

    const-string v0, "\u041f\u043b\u0451\u043d\u043a\u0430"

    return-object v0

    :cond_b77
    const-string v1, "Film Grain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b82

    const-string v0, "\u0417\u0435\u0440\u043d\u0438\u0441\u0442\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_b82
    const-string v1, "Fix validation errors before applying"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8d

    const-string v0, "\u0418\u0441\u043f\u0440\u0430\u0432\u044c\u0442\u0435 \u043e\u0448\u0438\u0431\u043a\u0438 \u043f\u0435\u0440\u0435\u0434 \u043f\u0440\u0438\u043c\u0435\u043d\u0435\u043d\u0438\u0435\u043c"

    return-object v0

    :cond_b8d
    const-string v1, "Fix validation errors before saving"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b98

    const-string v0, "\u0418\u0441\u043f\u0440\u0430\u0432\u044c\u0442\u0435 \u043e\u0448\u0438\u0431\u043a\u0438 \u043f\u0435\u0440\u0435\u0434 \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435\u043c"

    return-object v0

    :cond_b98
    const-string v1, "Fix validation errors first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba3

    const-string v0, "\u0421\u043d\u0430\u0447\u0430\u043b\u0430 \u0438\u0441\u043f\u0440\u0430\u0432\u044c\u0442\u0435 \u043e\u0448\u0438\u0431\u043a\u0438"

    return-object v0

    :cond_ba3
    const-string v1, "Flyout on press"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bae

    const-string v0, "\u041e\u0442\u043a\u0440\u044b\u0432\u0430\u0442\u044c \u043d\u0430\u0436\u0430\u0442\u0438\u0435\u043c"

    return-object v0

    :cond_bae
    const-string v1, "Follow accent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb9

    const-string v0, "\u041a\u0430\u043a \u0446\u0432\u0435\u0442 \u0430\u043a\u0446\u0435\u043d\u0442\u0430"

    return-object v0

    :cond_bb9
    const-string v1, "Follow global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc2

    return-object v7

    :cond_bc2
    const-string v1, "Follow panel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bcd

    const-string v0, "\u041a\u0430\u043a \u0443 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_bcd
    const-string v1, "Follow the dashed line; deviation = tracking error. Compare with HTSR / Super Touch on and off."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd8

    const-string v0, "\u041f\u0440\u043e\u0432\u043e\u0434\u0438\u0442\u0435 \u043f\u043e \u043f\u0443\u043d\u043a\u0442\u0438\u0440\u043d\u043e\u0439 \u043b\u0438\u043d\u0438\u0438. \u041e\u0442\u043a\u043b\u043e\u043d\u0435\u043d\u0438\u0435 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0435\u0442 \u043f\u043e\u0433\u0440\u0435\u0448\u043d\u043e\u0441\u0442\u044c. \u0421\u0440\u0430\u0432\u043d\u0438\u0442\u0435 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442 \u0441 HTSR / Super Touch \u0438 \u0431\u0435\u0437 \u043d\u0438\u0445."

    return-object v0

    :cond_bd8
    const-string v1, "Force GPU composition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be3

    const-string v0, "\u041f\u0440\u0438\u043d\u0443\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u0430\u044f GPU-\u043a\u043e\u043c\u043f\u043e\u0437\u0438\u0446\u0438\u044f"

    return-object v0

    :cond_be3
    const-string v1, "Force the video toolbox on or off for specific apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bee

    const-string v0, "\u041f\u0440\u0438\u043d\u0443\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e \u0432\u043a\u043b\u044e\u0447\u0430\u0442\u044c \u0438\u043b\u0438 \u0432\u044b\u043a\u043b\u044e\u0447\u0430\u0442\u044c \u0432\u0438\u0434\u0435\u043e\u043f\u0430\u043d\u0435\u043b\u044c \u0434\u043b\u044f \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_bee
    const-string v1, "Foreground time over the last 2 weeks \u2014 recent activity weighs more"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf9

    const-string v0, "\u0412\u0440\u0435\u043c\u044f \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043d\u0438\u044f \u0437\u0430 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0435 \u0434\u0432\u0435 \u043d\u0435\u0434\u0435\u043b\u0438, \u0441 \u0443\u0447\u0451\u0442\u043e\u043c \u043d\u0435\u0434\u0430\u0432\u043d\u0435\u0439 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_bf9
    const-string v1, "Frame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c04

    const-string v0, "\u041a\u0430\u0434\u0440"

    return-object v0

    :cond_c04
    const-string v1, "Frame generation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0f

    const-string v0, "\u0413\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432"

    return-object v0

    :cond_c0f
    const-string v1, "Frame-pacing / interpolation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c1a

    const-string v0, "\u0420\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e\u0441\u0442\u044c / \u0438\u043d\u0442\u0435\u0440\u043f\u043e\u043b\u044f\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432"

    return-object v0

    :cond_c1a
    const-string v1, "Freq floor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c25

    const-string v0, "\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u044c\u043d\u0430\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u0430"

    return-object v0

    :cond_c25
    const-string v1, "Frequencies are read from this device\'s kernel OPP tables."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c30

    const-string v0, "\u0427\u0430\u0441\u0442\u043e\u0442\u044b \u0441\u0447\u0438\u0442\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u0438\u0437 \u0442\u0430\u0431\u043b\u0438\u0446 OPP \u044f\u0434\u0440\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430."

    return-object v0

    :cond_c30
    const-string v1, "Frequency ceilings are per-game, snap to kernel tables and apply live."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3b

    const-string v0, "\u041f\u0440\u0435\u0434\u0435\u043b\u044b \u0447\u0430\u0441\u0442\u043e\u0442 \u0437\u0430\u0434\u0430\u044e\u0442\u0441\u044f \u0434\u043b\u044f \u043a\u0430\u0436\u0434\u043e\u0439 \u0438\u0433\u0440\u044b \u043f\u043e \u0442\u0430\u0431\u043b\u0438\u0446\u0430\u043c \u044f\u0434\u0440\u0430 \u0438 \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u044e\u0442\u0441\u044f \u0441\u0440\u0430\u0437\u0443."

    return-object v0

    :cond_c3b
    const-string v1, "Full Screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c46

    const-string v0, "\u0412\u0435\u0441\u044c \u044d\u043a\u0440\u0430\u043d"

    return-object v0

    :cond_c46
    const-string v1, "GAME PREVIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c51

    const-string v0, "\u041f\u0420\u0415\u0414\u041f\u0420\u041e\u0421\u041c\u041e\u0422\u0420 \u0418\u0413\u0420\u042b"

    return-object v0

    :cond_c51
    const-string v1, "GLOBAL MONITOR APPEARANCE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5c

    const-string v0, "\u041e\u0424\u041e\u0420\u041c\u041b\u0415\u041d\u0418\u0415 \u041c\u041e\u041d\u0418\u0422\u041e\u0420\u0418\u041d\u0413\u0410"

    return-object v0

    :cond_c5c
    const-string v1, "GPU TUNING (HARDWARE OVERRIDES)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c67

    const-string v0, "\u0410\u041f\u041f\u0410\u0420\u0410\u0422\u041d\u042b\u0415 \u041d\u0410\u0421\u0422\u0420\u041e\u0419\u041a\u0418 GPU"

    return-object v0

    :cond_c67
    const-string v1, "GPU frequency table not available."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c72

    const-string v0, "\u0422\u0430\u0431\u043b\u0438\u0446\u0430 \u0447\u0430\u0441\u0442\u043e\u0442 GPU \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430."

    return-object v0

    :cond_c72
    const-string v1, "GPU throttle (max 4 levels)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7d

    const-string v0, "\u041e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0435 GPU (\u0434\u043e 4 \u0443\u0440\u043e\u0432\u043d\u0435\u0439)"

    return-object v0

    :cond_c7d
    const-string v1, "GPU: at most 4 levels"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c88

    const-string v0, "GPU: \u043d\u0435 \u0431\u043e\u043b\u0435\u0435 4 \u0443\u0440\u043e\u0432\u043d\u0435\u0439"

    return-object v0

    :cond_c88
    const-string v1, "Game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c93

    const-string v0, "\u0418\u0433\u0440\u0430"

    return-object v0

    :cond_c93
    const-string v1, "Games in games, video apps in players, all apps elsewhere"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9e

    const-string v0, "\u0412 \u0438\u0433\u0440\u0430\u0445 \u2014 \u0438\u0433\u0440\u044b, \u0432 \u043f\u043b\u0435\u0435\u0440\u0430\u0445 \u2014 \u0432\u0438\u0434\u0435\u043e\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f, \u0432 \u043e\u0441\u0442\u0430\u043b\u044c\u043d\u044b\u0445 \u2014 \u0432\u0441\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_c9e
    const-string v1, "Generate Tiers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca9

    const-string v0, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u0441\u0442\u0443\u043f\u0435\u043d\u0438"

    return-object v0

    :cond_ca9
    const-string v1, "Generate curve"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb4

    const-string v0, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u043a\u0440\u0438\u0432\u0443\u044e"

    return-object v0

    :cond_cb4
    const-string v1, "Generate intermediate frames via AFME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cbf

    const-string v0, "\u0413\u0435\u043d\u0435\u0440\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u0440\u043e\u043c\u0435\u0436\u0443\u0442\u043e\u0447\u043d\u044b\u0435 \u043a\u0430\u0434\u0440\u044b \u0447\u0435\u0440\u0435\u0437 AFME"

    return-object v0

    :cond_cbf
    const-string v1, "Ghost Mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cca

    const-string v0, "\u041f\u0440\u0438\u0437\u0440\u0430\u0447\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c"

    return-object v0

    :cond_cca
    const-string v1, "Glassmorphism Blur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd5

    const-string v0, "\u0420\u0430\u0437\u043c\u044b\u0442\u0438\u0435 \u0441\u0442\u0435\u043a\u043b\u0430"

    return-object v0

    :cond_cd5
    const-string v1, "Glow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cde

    return-object v13

    :cond_cde
    const-string v1, "Governor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce9

    const-string v0, "\u0410\u043b\u0433\u043e\u0440\u0438\u0442\u043c \u0447\u0430\u0441\u0442\u043e\u0442"

    return-object v0

    :cond_ce9
    const-string v1, "Gradient Scene"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf4

    const-string v0, "\u0413\u0440\u0430\u0434\u0438\u0435\u043d\u0442\u043d\u044b\u0439 \u0444\u043e\u043d"

    return-object v0

    :cond_cf4
    const-string v1, "Graphics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cff

    const-string v0, "\u0413\u0440\u0430\u0444\u0438\u043a\u0430"

    return-object v0

    :cond_cff
    const-string v1, "Graphics driver (ANGLE)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0a

    const-string v0, "\u0413\u0440\u0430\u0444\u0438\u0447\u0435\u0441\u043a\u0438\u0439 \u0434\u0440\u0430\u0439\u0432\u0435\u0440 (ANGLE)"

    return-object v0

    :cond_d0a
    const-string v1, "Graphics enhancement"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d15

    const-string v0, "\u0423\u043b\u0443\u0447\u0448\u0435\u043d\u0438\u0435 \u0433\u0440\u0430\u0444\u0438\u043a\u0438"

    return-object v0

    :cond_d15
    const-string v1, "HDR Toning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d20

    const-string v0, "\u0422\u043e\u043d\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435 HDR"

    return-object v0

    :cond_d20
    const-string v1, "Handle (trigger)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2b

    const-string v0, "\u041f\u043e\u043b\u043e\u0441\u043a\u0430 \u0432\u044b\u0437\u043e\u0432\u0430"

    return-object v0

    :cond_d2b
    const-string v1, "Heavy Gaming"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d36

    const-string v0, "\u0422\u044f\u0436\u0451\u043b\u044b\u0435 \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_d36
    const-string v1, "Height"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d41

    const-string v0, "\u0412\u044b\u0441\u043e\u0442\u0430"

    return-object v0

    :cond_d41
    const-string v1, "Hide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4c

    const-string v0, "\u0421\u043a\u0440\u044b\u0442\u044c"

    return-object v0

    :cond_d4c
    const-string v1, "Hide PID gains"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d57

    const-string v0, "\u0421\u043a\u0440\u044b\u0442\u044c \u043a\u043e\u044d\u0444\u0444\u0438\u0446\u0438\u0435\u043d\u0442\u044b PID"

    return-object v0

    :cond_d57
    const-string v1, "High"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d62

    const-string v0, "\u0412\u044b\u0441\u043e\u043a\u0438\u0439"

    return-object v0

    :cond_d62
    const-string v1, "High FPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6d

    const-string v0, "\u0412\u044b\u0441\u043e\u043a\u0438\u0439 FPS"

    return-object v0

    :cond_d6d
    const-string v1, "Highlights"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d78

    const-string v0, "\u0421\u0432\u0435\u0442\u043b\u044b\u0435 \u0443\u0447\u0430\u0441\u0442\u043a\u0438"

    return-object v0

    :cond_d78
    const-string v1, "How the frequency ceiling falls as the chip heats up."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d83

    const-string v0, "\u041a\u0430\u043a \u0441\u043d\u0438\u0436\u0430\u0435\u0442\u0441\u044f \u043f\u0440\u0435\u0434\u0435\u043b \u0447\u0430\u0441\u0442\u043e\u0442\u044b \u043f\u0440\u0438 \u043d\u0430\u0433\u0440\u0435\u0432\u0435 \u0447\u0438\u043f\u0430."

    return-object v0

    :cond_d83
    const-string v1, "Hue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8e

    const-string v0, "\u0426\u0432\u0435\u0442\u043e\u0432\u043e\u0439 \u0442\u043e\u043d"

    return-object v0

    :cond_d8e
    const-string v1, "Icon corner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d99

    const-string v0, "\u0421\u043a\u0440\u0443\u0433\u043b\u0435\u043d\u0438\u0435 \u0437\u043d\u0430\u0447\u043a\u0430"

    return-object v0

    :cond_d99
    const-string v1, "Icon shape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da4

    const-string v0, "\u0424\u043e\u0440\u043c\u0430 \u0437\u043d\u0430\u0447\u043a\u043e\u0432"

    return-object v0

    :cond_da4
    const-string v1, "Icon size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_daf

    const-string v0, "\u0420\u0430\u0437\u043c\u0435\u0440 \u0437\u043d\u0430\u0447\u043a\u043e\u0432"

    return-object v0

    :cond_daf
    const-string v1, "Idle icon opacity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dba

    const-string v0, "\u041d\u0435\u043f\u0440\u043e\u0437\u0440\u0430\u0447\u043d\u043e\u0441\u0442\u044c \u043d\u0435\u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0433\u043e \u0437\u043d\u0430\u0447\u043a\u0430"

    return-object v0

    :cond_dba
    const-string v1, "Idle opacity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc5

    const-string v0, "\u041d\u0435\u043f\u0440\u043e\u0437\u0440\u0430\u0447\u043d\u043e\u0441\u0442\u044c \u043f\u0440\u0438 \u0431\u0435\u0437\u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0438"

    return-object v0

    :cond_dc5
    const-string v1, "Import"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd0

    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442"

    return-object v0

    :cond_dd0
    const-string v1, "Import from clipboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ddb

    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0438\u0437 \u0431\u0443\u0444\u0435\u0440\u0430 \u043e\u0431\u043c\u0435\u043d\u0430"

    return-object v0

    :cond_ddb
    const-string v1, "Import from vendor or another profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de6

    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0438\u0437 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0433\u043e \u0438\u043b\u0438 \u0434\u0440\u0443\u0433\u043e\u0433\u043e \u043f\u0440\u043e\u0444\u0438\u043b\u044f"

    return-object v0

    :cond_de6
    const-string v1, "Intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df1

    const-string v0, "\u0418\u043d\u0442\u0435\u043d\u0441\u0438\u0432\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_df1
    const-string v1, "Internal Audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dfc

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0437\u0432\u0443\u043a"

    return-object v0

    :cond_dfc
    const-string v1, "Item spacing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e07

    const-string v0, "\u0420\u0430\u0441\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u043c\u0435\u0436\u0434\u0443 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u0430\u043c\u0438"

    return-object v0

    :cond_e07
    const-string v1, "Keep dragging \u00b7 add more fingers to test multi-touch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e12

    const-string v0, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0430\u0439\u0442\u0435 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435; \u0434\u043e\u0431\u0430\u0432\u044c\u0442\u0435 \u043f\u0430\u043b\u044c\u0446\u044b \u0434\u043b\u044f \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438 \u043c\u0443\u043b\u044c\u0442\u0438\u0442\u0430\u0447\u0430"

    return-object v0

    :cond_e12
    const-string v1, "Keeps the device cold and efficient. Throttles early. Good for charging while gaming."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1d

    const-string v0, "\u0420\u0430\u043d\u044c\u0448\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0438\u0432\u0430\u0435\u0442 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c, \u0443\u043c\u0435\u043d\u044c\u0448\u0430\u044f \u043d\u0430\u0433\u0440\u0435\u0432 \u0438 \u0440\u0430\u0441\u0445\u043e\u0434. \u041f\u043e\u0434\u0445\u043e\u0434\u0438\u0442 \u0434\u043b\u044f \u0438\u0433\u0440\u044b \u0432\u043e \u0432\u0440\u0435\u043c\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0438."

    return-object v0

    :cond_e1d
    const-string v1, "Label size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e28

    const-string v0, "\u0420\u0430\u0437\u043c\u0435\u0440 \u043f\u043e\u0434\u043f\u0438\u0441\u0435\u0439"

    return-object v0

    :cond_e28
    const-string v1, "Labels"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e33

    const-string v0, "\u041f\u043e\u0434\u043f\u0438\u0441\u0438"

    return-object v0

    :cond_e33
    const-string v1, "Launch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3e

    const-string v0, "\u0417\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    return-object v0

    :cond_e3e
    const-string v1, "Launch in Bubble"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e49

    const-string v0, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u0432 \u043f\u0443\u0437\u044b\u0440\u044c\u043a\u0435"

    return-object v0

    :cond_e49
    const-string v1, "Launch in Freeform"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e54

    const-string v0, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u0432 \u043f\u043b\u0430\u0432\u0430\u044e\u0449\u0435\u043c \u043e\u043a\u043d\u0435"

    return-object v0

    :cond_e54
    const-string v1, "Layout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5f

    const-string v0, "\u0420\u0430\u0441\u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_e5f
    const-string v1, "Left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6a

    const-string v0, "\u0421\u043b\u0435\u0432\u0430"

    return-object v0

    :cond_e6a
    const-string v1, "Left = relaxed throttle (higher FPS). Right = aggressive (cooler, efficient)."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e75

    const-string v0, "\u0421\u043b\u0435\u0432\u0430 \u2014 \u043c\u044f\u0433\u043a\u0438\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f \u0438 \u0432\u044b\u0448\u0435 FPS. \u0421\u043f\u0440\u0430\u0432\u0430 \u2014 \u0441\u0438\u043b\u044c\u043d\u0435\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f, \u043c\u0435\u043d\u044c\u0448\u0435 \u043d\u0430\u0433\u0440\u0435\u0432 \u0438 \u0440\u0430\u0441\u0445\u043e\u0434."

    return-object v0

    :cond_e75
    const-string v1, "Letterbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e80

    const-string v0, "\u0421 \u043f\u043e\u043b\u044f\u043c\u0438"

    return-object v0

    :cond_e80
    const-string v1, "Level "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8b

    const-string v0, "\u0423\u0440\u043e\u0432\u0435\u043d\u044c "

    return-object v0

    :cond_e8b
    const-string v1, "Levels"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e96

    const-string v0, "\u0423\u0440\u043e\u0432\u043d\u0438"

    return-object v0

    :cond_e96
    const-string v1, "Light Game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea1

    const-string v0, "\u041b\u0451\u0433\u043a\u0430\u044f \u0438\u0433\u0440\u0430"

    return-object v0

    :cond_ea1
    const-string v1, "Line"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eac

    const-string v0, "\u041b\u0438\u043d\u0438\u044f"

    return-object v0

    :cond_eac
    const-string v1, "Live sample rate \u00b7 multi-touch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb7

    const-string v0, "\u0427\u0430\u0441\u0442\u043e\u0442\u0430 \u043e\u043f\u0440\u043e\u0441\u0430 \u00b7 \u043c\u0443\u043b\u044c\u0442\u0438\u0442\u0430\u0447"

    return-object v0

    :cond_eb7
    const-string v1, "Longer Duration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec2

    const-string v0, "\u0423\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u043d\u0430\u044f \u0434\u043b\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_ec2
    const-string v1, "Low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ecd

    const-string v0, "\u041d\u0438\u0437\u043a\u0438\u0439"

    return-object v0

    :cond_ecd
    const-string v1, "Low Quality"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed8

    const-string v0, "\u041d\u0438\u0437\u043a\u043e\u0435 \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e"

    return-object v0

    :cond_ed8
    const-string v1, "LunarisDolby is not installed."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee3

    const-string v0, "LunarisDolby \u043d\u0435 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d."

    return-object v0

    :cond_ee3
    const-string v1, "MAX Temp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eee

    const-string v0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u0430\u044f \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430"

    return-object v0

    :cond_eee
    const-string v1, "MINI MONITOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef9

    const-string v0, "\u041c\u0418\u041d\u0418-\u041c\u041e\u041d\u0418\u0422\u041e\u0420"

    return-object v0

    :cond_ef9
    const-string v1, "Manage curves"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f04

    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043a\u0440\u0438\u0432\u044b\u043c\u0438"

    return-object v0

    :cond_f04
    const-string v1, "Match the session"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0f

    const-string v0, "\u041a\u0430\u043a \u0443 \u0438\u0433\u0440\u043e\u0432\u043e\u0439 \u0441\u0435\u0441\u0441\u0438\u0438"

    return-object v0

    :cond_f0f
    const-string v1, "Max charge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1a

    const-string v0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u0430\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0430"

    return-object v0

    :cond_f1a
    const-string v1, "Max current"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f25

    const-string v0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u044b\u0439 \u0442\u043e\u043a"

    return-object v0

    :cond_f25
    const-string v1, "Maximum speed. Loose tiers, high current. Device will warm up."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f30

    const-string v0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u0430\u044f \u0441\u043a\u043e\u0440\u043e\u0441\u0442\u044c, \u043c\u044f\u0433\u043a\u0438\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f \u0438 \u0432\u044b\u0441\u043e\u043a\u0438\u0439 \u0442\u043e\u043a. \u0423\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e \u0431\u0443\u0434\u0435\u0442 \u043d\u0430\u0433\u0440\u0435\u0432\u0430\u0442\u044c\u0441\u044f."

    return-object v0

    :cond_f30
    const-string v1, "Medium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3b

    const-string v0, "\u0421\u0440\u0435\u0434\u043d\u0438\u0439"

    return-object v0

    :cond_f3b
    const-string v1, "Mic + Internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f46

    const-string v0, "\u041c\u0438\u043a\u0440\u043e\u0444\u043e\u043d \u0438 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0437\u0432\u0443\u043a"

    return-object v0

    :cond_f46
    const-string v1, "Microphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f51

    const-string v0, "\u041c\u0438\u043a\u0440\u043e\u0444\u043e\u043d"

    return-object v0

    :cond_f51
    const-string v1, "Middle ground between performance and temperature. Recommended for most games."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5c

    const-string v0, "\u0411\u0430\u043b\u0430\u043d\u0441 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u0438 \u0438 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u044b. \u0420\u0435\u043a\u043e\u043c\u0435\u043d\u0434\u0443\u0435\u0442\u0441\u044f \u0434\u043b\u044f \u0431\u043e\u043b\u044c\u0448\u0438\u043d\u0441\u0442\u0432\u0430 \u0438\u0433\u0440."

    return-object v0

    :cond_f5c
    const-string v1, "Min current"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f67

    const-string v0, "\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u044c\u043d\u044b\u0439 \u0442\u043e\u043a"

    return-object v0

    :cond_f67
    const-string v1, "Mini Monitor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f72

    const-string v0, "\u041c\u0438\u043d\u0438-\u043c\u043e\u043d\u0438\u0442\u043e\u0440"

    return-object v0

    :cond_f72
    const-string v1, "Minimal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7d

    const-string v0, "\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u044c\u043d\u044b\u0439"

    return-object v0

    :cond_f7d
    const-string v1, "Minimal throttling, emergency brake only. Requires external cooling."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f88

    const-string v0, "\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u044c\u043d\u044b\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f, \u0442\u043e\u043b\u044c\u043a\u043e \u0430\u0432\u0430\u0440\u0438\u0439\u043d\u0430\u044f \u0437\u0430\u0449\u0438\u0442\u0430. \u0422\u0440\u0435\u0431\u0443\u0435\u0442\u0441\u044f \u0432\u043d\u0435\u0448\u043d\u0435\u0435 \u043e\u0445\u043b\u0430\u0436\u0434\u0435\u043d\u0438\u0435."

    return-object v0

    :cond_f88
    const-string v1, "Minimum frequency during heaviest throttle, as % of hardware max"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f93

    const-string v0, "\u041c\u0438\u043d\u0438\u043c\u0430\u043b\u044c\u043d\u0430\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u043f\u0440\u0438 \u0441\u0438\u043b\u044c\u043d\u043e\u043c \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0438, \u0432 \u043f\u0440\u043e\u0446\u0435\u043d\u0442\u0430\u0445 \u043e\u0442 \u0430\u043f\u043f\u0430\u0440\u0430\u0442\u043d\u043e\u0433\u043e \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c\u0430"

    return-object v0

    :cond_f93
    const-string v1, "Mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9e

    const-string v0, "\u0420\u0435\u0436\u0438\u043c"

    return-object v0

    :cond_f9e
    const-string v1, "Monitor and limits"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa9

    const-string v0, "\u041c\u043e\u043d\u0438\u0442\u043e\u0440\u0438\u043d\u0433 \u0438 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_fa9
    const-string v1, "Monitor service unavailable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb4

    const-string v0, "\u0421\u043b\u0443\u0436\u0431\u0430 \u043c\u043e\u043d\u0438\u0442\u043e\u0440\u0438\u043d\u0433\u0430 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430"

    return-object v0

    :cond_fb4
    const-string v1, "Monitors"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fbf

    const-string v0, "\u041c\u043e\u043d\u0438\u0442\u043e\u0440\u0438\u043d\u0433"

    return-object v0

    :cond_fbf
    const-string v1, "Mono"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fca

    const-string v0, "\u041c\u043e\u043d\u043e"

    return-object v0

    :cond_fca
    const-string v1, "Mood"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd5

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_fd5
    const-string v1, "More"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe0

    const-string v0, "\u0415\u0449\u0451"

    return-object v0

    :cond_fe0
    const-string v1, "More\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_feb

    const-string v0, "\u0415\u0449\u0451\u2026"

    return-object v0

    :cond_feb
    const-string v1, "Most/recently-used apps across everything, in any session"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff6

    const-string v0, "\u0427\u0430\u0441\u0442\u043e \u0438 \u043d\u0435\u0434\u0430\u0432\u043d\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u043c\u044b\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0432\u043e \u0432\u0441\u0435\u0445 \u0441\u0435\u0441\u0441\u0438\u044f\u0445"

    return-object v0

    :cond_ff6
    const-string v1, "Movie"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1001

    const-string v0, "\u0424\u0438\u043b\u044c\u043c"

    return-object v0

    :cond_1001
    const-string v1, "Multi-touch enabled \u00b7 swipe here no longer scrolls the panel. Open FULL for the latency lab."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100c

    const-string v0, "\u041c\u0443\u043b\u044c\u0442\u0438\u0442\u0430\u0447 \u0432\u043a\u043b\u044e\u0447\u0451\u043d \u2014 \u0441\u0432\u0430\u0439\u043f\u044b \u0437\u0434\u0435\u0441\u044c \u043d\u0435 \u043f\u0440\u043e\u043a\u0440\u0443\u0447\u0438\u0432\u0430\u044e\u0442 \u043f\u0430\u043d\u0435\u043b\u044c. \u0414\u043b\u044f \u0442\u0435\u0441\u0442\u0430 \u0437\u0430\u0434\u0435\u0440\u0436\u043a\u0438 \u043e\u0442\u043a\u0440\u043e\u0439\u0442\u0435 \u043f\u043e\u043b\u043d\u044b\u0439 \u044d\u043a\u0440\u0430\u043d."

    return-object v0

    :cond_100c
    const-string v1, "Multiplier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1017

    const-string v0, "\u041c\u043d\u043e\u0436\u0438\u0442\u0435\u043b\u044c"

    return-object v0

    :cond_1017
    const-string v1, "Music"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1022

    const-string v0, "\u041c\u0443\u0437\u044b\u043a\u0430"

    return-object v0

    :cond_1022
    const-string v1, "My profiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102d

    const-string v0, "\u041c\u043e\u0438 \u043f\u0440\u043e\u0444\u0438\u043b\u0438"

    return-object v0

    :cond_102d
    const-string v1, "My profiles (copy)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1038

    const-string v0, "\u041c\u043e\u0438 \u043f\u0440\u043e\u0444\u0438\u043b\u0438 (\u043a\u043e\u043f\u0438\u044f)"

    return-object v0

    :cond_1038
    const-string v1, "NETWORK DETAILS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1043

    const-string v0, "\u0421\u0412\u0415\u0414\u0415\u041d\u0418\u042f \u041e \u0421\u0415\u0422\u0418"

    return-object v0

    :cond_1043
    const-string v1, "NO ACTIVE CONNECTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_104e

    const-string v0, "\u041d\u0415\u0422 \u0410\u041a\u0422\u0418\u0412\u041d\u042b\u0425 \u041f\u041e\u0414\u041a\u041b\u042e\u0427\u0415\u041d\u0418\u0419"

    return-object v0

    :cond_104e
    const-string v1, "Native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1059

    const-string v0, "\u041d\u0430\u0442\u0438\u0432\u043d\u044b\u0439"

    return-object v0

    :cond_1059
    const-string v1, "Navigation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1064

    const-string v0, "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"

    return-object v0

    :cond_1064
    const-string v1, "Neon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106f

    const-string v0, "\u041d\u0435\u043e\u043d"

    return-object v0

    :cond_106f
    const-string v1, "Network ping"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107a

    const-string v0, "\u0417\u0430\u0434\u0435\u0440\u0436\u043a\u0430 \u0441\u0435\u0442\u0438"

    return-object v0

    :cond_107a
    const-string v1, "Never"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1085

    const-string v0, "\u041d\u0438\u043a\u043e\u0433\u0434\u0430"

    return-object v0

    :cond_1085
    const-string v1, "New Charging Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1090

    const-string v0, "\u041d\u043e\u0432\u044b\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    return-object v0

    :cond_1090
    const-string v1, "New Custom Device Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109b

    const-string v0, "\u041d\u043e\u0432\u044b\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    return-object v0

    :cond_109b
    const-string v1, "New Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a6

    const-string v0, "\u041d\u043e\u0432\u044b\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    return-object v0

    :cond_10a6
    const-string v1, "Night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b1

    const-string v0, "\u041d\u043e\u0447\u044c"

    return-object v0

    :cond_10b1
    const-string v1, "Night Trickle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10bc

    const-string v0, "\u041d\u043e\u0447\u043d\u0430\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0430"

    return-object v0

    :cond_10bc
    const-string v1, "No CPU clusters exposed by this kernel."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10c7

    const-string v0, "\u042f\u0434\u0440\u043e \u043d\u0435 \u043f\u0440\u0435\u0434\u043e\u0441\u0442\u0430\u0432\u043b\u044f\u0435\u0442 \u0434\u0430\u043d\u043d\u044b\u0435 \u043e \u043a\u043b\u0430\u0441\u0442\u0435\u0440\u0430\u0445 CPU."

    return-object v0

    :cond_10c7
    const-string v1, "No active apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10d2

    const-string v0, "\u041d\u0435\u0442 \u0430\u043a\u0442\u0438\u0432\u043d\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_10d2
    const-string v1, "No apps found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10dd

    const-string v0, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u044b"

    return-object v0

    :cond_10dd
    const-string v1, "No charging profiles yet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e8

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u0438 \u0437\u0430\u0440\u044f\u0434\u043a\u0438 \u043f\u043e\u043a\u0430 \u043d\u0435 \u0441\u043e\u0437\u0434\u0430\u043d\u044b"

    return-object v0

    :cond_10e8
    const-string v1, "No custom profiles yet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f3

    const-string v0, "\u0421\u0432\u043e\u0438\u0445 \u043f\u0440\u043e\u0444\u0438\u043b\u0435\u0439 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442"

    return-object v0

    :cond_10f3
    const-string v1, "No fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10fe

    const-string v0, "\u0411\u0435\u0437 \u0437\u0430\u043b\u0438\u0432\u043a\u0438"

    return-object v0

    :cond_10fe
    const-string v1, "No filters yet \u2014 add one below."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1109

    const-string v0, "\u0424\u0438\u043b\u044c\u0442\u0440\u043e\u0432 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442 \u2014 \u0434\u043e\u0431\u0430\u0432\u044c\u0442\u0435 \u0438\u0445 \u043d\u0438\u0436\u0435."

    return-object v0

    :cond_1109
    const-string v1, "No games in your space yet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1114

    const-string v0, "\u0412 \u0438\u0433\u0440\u043e\u0432\u043e\u043c \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0435 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442 \u0438\u0433\u0440"

    return-object v0

    :cond_1114
    const-string v1, "No limits"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111f

    const-string v0, "\u0411\u0435\u0437 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_111f
    const-string v1, "No recordings yet.\nStart recording from the game panel."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112a

    const-string v0, "\u0417\u0430\u043f\u0438\u0441\u0435\u0439 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442.\n\u041d\u0430\u0447\u043d\u0438\u0442\u0435 \u0437\u0430\u043f\u0438\u0441\u044c \u043d\u0430 \u0438\u0433\u0440\u043e\u0432\u043e\u0439 \u043f\u0430\u043d\u0435\u043b\u0438."

    return-object v0

    :cond_112a
    const-string v1, "No throttle levels"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1135

    const-string v0, "\u041d\u0435\u0442 \u0443\u0440\u043e\u0432\u043d\u0435\u0439 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_1135
    const-string v1, "No throttle levels yet \u2014 generate or import a curve to preview it here."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1140

    const-string v0, "\u0423\u0440\u043e\u0432\u043d\u0435\u0439 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442 \u2014 \u0441\u043e\u0437\u0434\u0430\u0439\u0442\u0435 \u0438\u043b\u0438 \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u0443\u0439\u0442\u0435 \u043a\u0440\u0438\u0432\u0443\u044e \u0434\u043b\u044f \u043f\u0440\u0435\u0434\u043f\u0440\u043e\u0441\u043c\u043e\u0442\u0440\u0430."

    return-object v0

    :cond_1140
    const-string v1, "No throttle levels \u2014 full performance at every temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114b

    const-string v0, "\u041d\u0435\u0442 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0439 \u2014 \u043f\u043e\u043b\u043d\u0430\u044f \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c \u043f\u0440\u0438 \u043b\u044e\u0431\u043e\u0439 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0435"

    return-object v0

    :cond_114b
    const-string v1, "No throttle levels \u2014 unrestricted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1156

    const-string v0, "\u041d\u0435\u0442 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0439 \u2014 \u0431\u0435\u0437 \u043b\u0438\u043c\u0438\u0442\u043e\u0432"

    return-object v0

    :cond_1156
    const-string v1, "No tiles\nAdd them in panel settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1161

    const-string v0, "\u041d\u0435\u0442 \u043f\u043b\u0438\u0442\u043e\u043a\n\u0414\u043e\u0431\u0430\u0432\u044c\u0442\u0435 \u0438\u0445 \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_1161
    const-string v1, "No valid style in clipboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116c

    const-string v0, "\u0412 \u0431\u0443\u0444\u0435\u0440\u0435 \u043e\u0431\u043c\u0435\u043d\u0430 \u043d\u0435\u0442 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0435\u0433\u043e \u0441\u0442\u0438\u043b\u044f"

    return-object v0

    :cond_116c
    const-string v1, "None"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1177

    const-string v0, "\u041d\u0435\u0442"

    return-object v0

    :cond_1177
    const-string v1, "Normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1182

    const-string v0, "\u041e\u0431\u044b\u0447\u043d\u044b\u0439"

    return-object v0

    :cond_1182
    const-string v1, "Not supported by this kernel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_118d

    const-string v0, "\u041d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u044d\u0442\u0438\u043c \u044f\u0434\u0440\u043e\u043c"

    return-object v0

    :cond_118d
    const-string v1, "Notch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1198

    const-string v0, "\u0412\u044b\u0440\u0435\u0437"

    return-object v0

    :cond_1198
    const-string v1, "Off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11a3

    const-string v0, "\u0412\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    return-object v0

    :cond_11a3
    const-string v1, "One App (Game)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11ae

    const-string v0, "\u041e\u0434\u043d\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 (\u0438\u0433\u0440\u0430)"

    return-object v0

    :cond_11ae
    const-string v1, "One-click presets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b9

    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u044b\u0435 \u043d\u0430\u0431\u043e\u0440\u044b"

    return-object v0

    :cond_11b9
    const-string v1, "Opacity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c4

    const-string v0, "\u041d\u0435\u043f\u0440\u043e\u0437\u0440\u0430\u0447\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_11c4
    const-string v1, "Orientation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11cf

    const-string v0, "\u041e\u0440\u0438\u0435\u043d\u0442\u0430\u0446\u0438\u044f"

    return-object v0

    :cond_11cf
    const-string v1, "Original"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11da

    const-string v0, "\u0418\u0441\u0445\u043e\u0434\u043d\u044b\u0439"

    return-object v0

    :cond_11da
    const-string v1, "Outline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11e5

    const-string v0, "\u041a\u043e\u043d\u0442\u0443\u0440"

    return-object v0

    :cond_11e5
    const-string v1, "PER-GAME DOLBY PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11ee

    return-object v15

    :cond_11ee
    const-string v1, "PREVIEW STATE & BACKDROP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f9

    const-string v0, "\u041f\u0420\u0415\u0414\u041f\u0420\u041e\u0421\u041c\u041e\u0422\u0420 \u0418 \u0424\u041e\u041d"

    return-object v0

    :cond_11f9
    const-string v1, "PROCESSES MONITOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1204

    const-string v0, "\u041c\u041e\u041d\u0418\u0422\u041e\u0420\u0418\u041d\u0413 \u041f\u0420\u041e\u0426\u0415\u0421\u0421\u041e\u0412"

    return-object v0

    :cond_1204
    const-string v1, "Panel Accent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120f

    const-string v0, "\u0410\u043a\u0446\u0435\u043d\u0442 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_120f
    const-string v1, "Per-app settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121a

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_121a
    const-string v1, "Per-cluster curves (manual)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1225

    const-string v0, "\u041a\u0440\u0438\u0432\u044b\u0435 \u043a\u043b\u0430\u0441\u0442\u0435\u0440\u043e\u0432 (\u0432\u0440\u0443\u0447\u043d\u0443\u044e)"

    return-object v0

    :cond_1225
    const-string v1, "Perf tuner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1230

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_1230
    const-string v1, "Performance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123b

    const-string v0, "\u041f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_123b
    const-string v1, "Phone Call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1246

    const-string v0, "\u0422\u0435\u043b\u0435\u0444\u043e\u043d\u043d\u044b\u0439 \u0437\u0432\u043e\u043d\u043e\u043a"

    return-object v0

    :cond_1246
    const-string v1, "Pilih area yang ingin direkam:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1251

    const-string v0, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043e\u0431\u043b\u0430\u0441\u0442\u044c \u0437\u0430\u043f\u0438\u0441\u0438:"

    return-object v0

    :cond_1251
    const-string v1, "Pill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125c

    const-string v0, "\u041a\u0430\u043f\u0441\u0443\u043b\u0430"

    return-object v0

    :cond_125c
    const-string v1, "Pinned"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1267

    const-string v0, "\u0417\u0430\u043a\u0440\u0435\u043f\u043b\u0435\u043d\u043e"

    return-object v0

    :cond_1267
    const-string v1, "Play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1272

    const-string v0, "\u0412\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0441\u0442\u0438"

    return-object v0

    :cond_1272
    const-string v1, "Position"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_127d

    const-string v0, "\u041f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_127d
    const-string v1, "Power"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1288

    const-string v0, "\u041c\u043e\u0449\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_1288
    const-string v1, "Presets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1293

    const-string v0, "\u041d\u0430\u0431\u043e\u0440\u044b"

    return-object v0

    :cond_1293
    const-string v1, "Prioritizes battery longevity. Lower current, tighter tiers."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129e

    const-string v0, "\u041f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442 \u0440\u0435\u0441\u0443\u0440\u0441\u0443 \u0431\u0430\u0442\u0430\u0440\u0435\u0438: \u043c\u0435\u043d\u044c\u0448\u0438\u0439 \u0442\u043e\u043a \u0438 \u0431\u043e\u043b\u0435\u0435 \u0441\u0442\u0440\u043e\u0433\u0438\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f."

    return-object v0

    :cond_129e
    const-string v1, "Prioritizes high FPS. Throttle only kicks in when genuinely hot."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a9

    const-string v0, "\u041f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442 \u0432\u044b\u0441\u043e\u043a\u043e\u043c\u0443 FPS: \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f \u0432\u043a\u043b\u044e\u0447\u0430\u044e\u0442\u0441\u044f \u043f\u0440\u0438 \u0441\u0438\u043b\u044c\u043d\u043e\u043c \u043d\u0430\u0433\u0440\u0435\u0432\u0435."

    return-object v0

    :cond_12a9
    const-string v1, "Priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12b4

    const-string v0, "\u041f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442"

    return-object v0

    :cond_12b4
    const-string v1, "Probing device\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12bf

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430\u2026"

    return-object v0

    :cond_12bf
    const-string v1, "Processes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12ca

    const-string v0, "\u041f\u0440\u043e\u0446\u0435\u0441\u0441\u044b"

    return-object v0

    :cond_12ca
    const-string v1, "Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12d5

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c"

    return-object v0

    :cond_12d5
    const-string v1, "Profile Name (e.g. RedMagic Custom)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e0

    const-string v0, "\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u044f (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, \u00ab\u041c\u043e\u0439 RedMagic\u00bb)"

    return-object v0

    :cond_12e0
    const-string v1, "Profile applied for testing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12eb

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u043f\u0440\u0438\u043c\u0435\u043d\u0451\u043d \u0434\u043b\u044f \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438"

    return-object v0

    :cond_12eb
    const-string v1, "Profile name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12f6

    const-string v0, "\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u044f"

    return-object v0

    :cond_12f6
    const-string v1, "Profile name is required"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1301

    const-string v0, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u044f"

    return-object v0

    :cond_1301
    const-string v1, "Profile saved"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130c

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d"

    return-object v0

    :cond_130c
    const-string v1, "Profile saved and applied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1317

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d \u0438 \u043f\u0440\u0438\u043c\u0435\u043d\u0451\u043d"

    return-object v0

    :cond_1317
    const-string v1, "Profile saved in LunarisDolby (SSOT). Auto-applied on game launch."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1322

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d \u0432 LunarisDolby \u0438 \u0431\u0443\u0434\u0435\u0442 \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u0442\u044c\u0441\u044f \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0435 \u0438\u0433\u0440\u044b."

    return-object v0

    :cond_1322
    const-string v1, "Quality"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132d

    const-string v0, "\u041a\u0430\u0447\u0435\u0441\u0442\u0432\u043e"

    return-object v0

    :cond_132d
    const-string v1, "Quality (Trilinear)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1338

    const-string v0, "\u041a\u0430\u0447\u0435\u0441\u0442\u0432\u043e (\u0442\u0440\u0438\u043b\u0438\u043d\u0435\u0439\u043d\u0430\u044f)"

    return-object v0

    :cond_1338
    const-string v1, "Quick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1343

    const-string v0, "\u0411\u044b\u0441\u0442\u0440\u043e"

    return-object v0

    :cond_1343
    const-string v1, "Quick Start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134e

    const-string v0, "\u0411\u044b\u0441\u0442\u0440\u044b\u0439 \u0437\u0430\u043f\u0443\u0441\u043a"

    return-object v0

    :cond_134e
    const-string v1, "RESET ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1359

    const-string v0, "\u0421\u0411\u0420\u041e\u0421\u0418\u0422\u042c \u0412\u0421\u0401"

    return-object v0

    :cond_1359
    const-string v1, "RESET TO STOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1364

    const-string v0, "\u0412\u0415\u0420\u041d\u0423\u0422\u042c \u0418\u0421\u0425\u041e\u0414\u041d\u041e\u0415"

    return-object v0

    :cond_1364
    const-string v1, "Radius"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136f

    const-string v0, "\u0420\u0430\u0434\u0438\u0443\u0441"

    return-object v0

    :cond_136f
    const-string v1, "Rail width"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137a

    const-string v0, "\u0428\u0438\u0440\u0438\u043d\u0430 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_137a
    const-string v1, "Raises the panel scan rate to 240 Hz for this game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1385

    const-string v0, "\u041f\u043e\u0432\u044b\u0441\u0438\u0442\u044c \u0447\u0430\u0441\u0442\u043e\u0442\u0443 \u043e\u043f\u0440\u043e\u0441\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430 \u0434\u043e 240 \u0413\u0446 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_1385
    const-string v1, "Range"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1390

    const-string v0, "\u0414\u0438\u0430\u043f\u0430\u0437\u043e\u043d"

    return-object v0

    :cond_1390
    const-string v1, "Reading CPU clusters from kernel..."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_139b

    const-string v0, "\u0427\u0442\u0435\u043d\u0438\u0435 \u043a\u043b\u0430\u0441\u0442\u0435\u0440\u043e\u0432 CPU \u0438\u0437 \u044f\u0434\u0440\u0430\u2026"

    return-object v0

    :cond_139b
    const-string v1, "Reading CPU clusters\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a6

    const-string v0, "\u0427\u0442\u0435\u043d\u0438\u0435 \u043a\u043b\u0430\u0441\u0442\u0435\u0440\u043e\u0432 CPU\u2026"

    return-object v0

    :cond_13a6
    const-string v1, "Reading GPU frequency table..."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b1

    const-string v0, "\u0427\u0442\u0435\u043d\u0438\u0435 \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u0447\u0430\u0441\u0442\u043e\u0442 GPU\u2026"

    return-object v0

    :cond_13b1
    const-string v1, "Reading kernel tables..."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13bc

    const-string v0, "\u0427\u0442\u0435\u043d\u0438\u0435 \u0442\u0430\u0431\u043b\u0438\u0446 \u044f\u0434\u0440\u0430\u2026"

    return-object v0

    :cond_13bc
    const-string v1, "Recently used"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13c7

    const-string v0, "\u041d\u0435\u0434\u0430\u0432\u043d\u043e \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043d\u043d\u044b\u0435"

    return-object v0

    :cond_13c7
    const-string v1, "Record"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d2

    const-string v0, "\u0417\u0430\u043f\u0438\u0441\u044c"

    return-object v0

    :cond_13d2
    const-string v1, "Remove"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13db

    return-object v17

    :cond_13db
    const-string v1, "Remove from Game Space"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13e6

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0438\u0437 \u0438\u0433\u0440\u043e\u0432\u043e\u0433\u043e \u043f\u0440\u043e\u0441\u0442\u0440\u0430\u043d\u0441\u0442\u0432\u0430"

    return-object v0

    :cond_13e6
    const-string v1, "Remove level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13f1

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0443\u0440\u043e\u0432\u0435\u043d\u044c"

    return-object v0

    :cond_13f1
    const-string v1, "Render resolution"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13fc

    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043e\u0442\u0440\u0438\u0441\u043e\u0432\u043a\u0438"

    return-object v0

    :cond_13fc
    const-string v1, "Replace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1407

    const-string v0, "\u0417\u0430\u043c\u0435\u043d\u0438\u0442\u044c"

    return-object v0

    :cond_1407
    const-string v1, "Replace current curves?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1412

    const-string v0, "\u0417\u0430\u043c\u0435\u043d\u0438\u0442\u044c \u0442\u0435\u043a\u0443\u0449\u0438\u0435 \u043a\u0440\u0438\u0432\u044b\u0435?"

    return-object v0

    :cond_1412
    const-string v1, "Reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141d

    const-string v0, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c"

    return-object v0

    :cond_141d
    const-string v1, "Reset Default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1428

    const-string v0, "\u0412\u0435\u0440\u043d\u0443\u0442\u044c \u0438\u0441\u0445\u043e\u0434\u043d\u043e\u0435"

    return-object v0

    :cond_1428
    const-string v1, "Reset to default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1431

    return-object v16

    :cond_1431
    const-string v1, "Resume below"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143c

    const-string v0, "\u0412\u043e\u0437\u043e\u0431\u043d\u043e\u0432\u0438\u0442\u044c \u043d\u0438\u0436\u0435"

    return-object v0

    :cond_143c
    const-string v1, "Right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1447

    const-string v0, "\u0421\u043f\u0440\u0430\u0432\u0430"

    return-object v0

    :cond_1447
    const-string v1, "Rounded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1452

    const-string v0, "\u0421\u043a\u0440\u0443\u0433\u043b\u0451\u043d\u043d\u044b\u0439"

    return-object v0

    :cond_1452
    const-string v1, "Run the system from the charger and keep the battery out of the loop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145d

    const-string v0, "\u041f\u0438\u0442\u0430\u0442\u044c \u0441\u0438\u0441\u0442\u0435\u043c\u0443 \u043e\u0442 \u0437\u0430\u0440\u044f\u0434\u043d\u043e\u0433\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430, \u043c\u0438\u043d\u0443\u044f \u0431\u0430\u0442\u0430\u0440\u0435\u044e"

    return-object v0

    :cond_145d
    const-string v1, "Run the tap test with each toggle combination to fill this table."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1468

    const-string v0, "\u0414\u043b\u044f \u0437\u0430\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u044f \u0442\u0430\u0431\u043b\u0438\u0446\u044b \u043f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u043a\u0430\u0441\u0430\u043d\u0438\u044f \u0441 \u043a\u0430\u0436\u0434\u043e\u0439 \u043a\u043e\u043c\u0431\u0438\u043d\u0430\u0446\u0438\u0435\u0439 \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0430\u0442\u0435\u043b\u0435\u0439."

    return-object v0

    :cond_1468
    const-string v1, "SCREEN RECORD DEFAULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1473

    const-string v0, "\u041f\u0410\u0420\u0410\u041c\u0415\u0422\u0420\u042b \u0417\u0410\u041f\u0418\u0421\u0418 \u042d\u041a\u0420\u0410\u041d\u0410"

    return-object v0

    :cond_1473
    const-string v1, "SGSR1 \u2014 Adaptive Sharpening"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_147e

    const-string v0, "SGSR1 \u2014 \u0430\u0434\u0430\u043f\u0442\u0438\u0432\u043d\u0430\u044f \u0440\u0435\u0437\u043a\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_147e
    const-string v1, "SGSR2 \u2014 Temporal Upscale (Quality)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1489

    const-string v0, "SGSR2 \u2014 \u0432\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0435 \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435 (\u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e)"

    return-object v0

    :cond_1489
    const-string v1, "MobFGSR \u2014 Motion Interpolation (Best)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1494

    const-string v0, "MobFGSR \u2014 \u0438\u043d\u0442\u0435\u0440\u043f\u043e\u043b\u044f\u0446\u0438\u044f \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f (\u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c)"

    return-object v0

    :cond_1494
    const-string v1, "Saturated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149f

    const-string v0, "\u041d\u0430\u0441\u044b\u0449\u0435\u043d\u043d\u044b\u0439"

    return-object v0

    :cond_149f
    const-string v1, "Saturation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14aa

    const-string v0, "\u041d\u0430\u0441\u044b\u0449\u0435\u043d\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_14aa
    const-string v1, "Save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14b5

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    return-object v0

    :cond_14b5
    const-string v1, "Save & Activate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14c0

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0438 \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u043e\u0432\u0430\u0442\u044c"

    return-object v0

    :cond_14c0
    const-string v1, "Save Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14cb

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u043f\u0440\u043e\u0444\u0438\u043b\u044c"

    return-object v0

    :cond_14cb
    const-string v1, "Save and apply"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d6

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0438 \u043f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c"

    return-object v0

    :cond_14d6
    const-string v1, "Saved & set as active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14e1

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e \u0438 \u0430\u043a\u0442\u0438\u0432\u0438\u0440\u043e\u0432\u0430\u043d\u043e"

    return-object v0

    :cond_14e1
    const-string v1, "Saved in LunarisDolby (SSOT). Auto-applied on game launch."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14ec

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e \u0432 LunarisDolby; \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u0435\u0442\u0441\u044f \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0435 \u0438\u0433\u0440\u044b."

    return-object v0

    :cond_14ec
    const-string v1, "Saver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14f7

    const-string v0, "\u042d\u043a\u043e\u043d\u043e\u043c\u0438\u044f"

    return-object v0

    :cond_14f7
    const-string v1, "Screen Record"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1502

    const-string v0, "\u0417\u0430\u043f\u0438\u0441\u044c \u044d\u043a\u0440\u0430\u043d\u0430"

    return-object v0

    :cond_1502
    const-string v1, "Screen record"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_150d

    const-string v0, "\u0417\u0430\u043f\u0438\u0441\u044c \u044d\u043a\u0440\u0430\u043d\u0430"

    return-object v0

    :cond_150d
    const-string v1, "Search profiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1518

    const-string v0, "\u041f\u043e\u0438\u0441\u043a \u043f\u0440\u043e\u0444\u0438\u043b\u0435\u0439"

    return-object v0

    :cond_1518
    const-string v1, "Sepia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1523

    const-string v0, "\u0421\u0435\u043f\u0438\u044f"

    return-object v0

    :cond_1523
    const-string v1, "Session ended"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152e

    const-string v0, "\u0421\u0435\u0441\u0441\u0438\u044f \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430"

    return-object v0

    :cond_152e
    const-string v1, "Session not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1539

    const-string v0, "\u0421\u0435\u0441\u0441\u0438\u044f \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u0430"

    return-object v0

    :cond_1539
    const-string v1, "Session timer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1544

    const-string v0, "\u0422\u0430\u0439\u043c\u0435\u0440 \u0441\u0435\u0441\u0441\u0438\u0438"

    return-object v0

    :cond_1544
    const-string v1, "Set active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154d

    return-object v11

    :cond_154d
    const-string v1, "Settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1558

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    return-object v0

    :cond_1558
    const-string v1, "Shadows"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1563

    const-string v0, "\u0422\u0451\u043c\u043d\u044b\u0435 \u0443\u0447\u0430\u0441\u0442\u043a\u0438"

    return-object v0

    :cond_1563
    const-string v1, "Shape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156e

    const-string v0, "\u0424\u043e\u0440\u043c\u0430"

    return-object v0

    :cond_156e
    const-string v1, "Share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1579

    const-string v0, "\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f"

    return-object v0

    :cond_1579
    const-string v1, "Share sidebar style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1584

    const-string v0, "\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f \u0441\u0442\u0438\u043b\u0435\u043c \u0431\u043e\u043a\u043e\u0432\u043e\u0439 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_1584
    const-string v1, "Sharp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_158f

    const-string v0, "\u0420\u0435\u0437\u043a\u0438\u0439"

    return-object v0

    :cond_158f
    const-string v1, "Sharp (1.25\u00d7)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159a

    const-string v0, "\u0420\u0435\u0437\u043a\u043e\u0441\u0442\u044c (1,25\u00d7)"

    return-object v0

    :cond_159a
    const-string v1, "Sharpen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15a5

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u0438\u0435 \u0440\u0435\u0437\u043a\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_15a5
    const-string v1, "Show Battery Temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15b0

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0443 \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_15b0
    const-string v1, "Show Battery/FPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15bb

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0431\u0430\u0442\u0430\u0440\u0435\u044e / FPS"

    return-object v0

    :cond_15bb
    const-string v1, "Show CPU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c6

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c CPU"

    return-object v0

    :cond_15c6
    const-string v1, "Show CPU Temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d1

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0443 CPU"

    return-object v0

    :cond_15d1
    const-string v1, "Show FPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15dc

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c FPS"

    return-object v0

    :cond_15dc
    const-string v1, "Show GPU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e7

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c GPU"

    return-object v0

    :cond_15e7
    const-string v1, "Show GPU Temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15f2

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0443 GPU"

    return-object v0

    :cond_15f2
    const-string v1, "Show RAM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15fd

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u041e\u0417\u0423"

    return-object v0

    :cond_15fd
    const-string v1, "Show Taps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1608

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u043a\u0430\u0441\u0430\u043d\u0438\u044f"

    return-object v0

    :cond_1608
    const-string v1, "Show Temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1613

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0443"

    return-object v0

    :cond_1613
    const-string v1, "Show Temperature & Power"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161e

    const-string v0, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0443 \u0438 \u043c\u043e\u0449\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_161e
    const-string v1, "Silent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1629

    const-string v0, "\u0411\u0435\u0437 \u0437\u0432\u0443\u043a\u0430"

    return-object v0

    :cond_1629
    const-string v1, "Size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1634

    const-string v0, "\u0420\u0430\u0437\u043c\u0435\u0440"

    return-object v0

    :cond_1634
    const-string v1, "Smart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_163f

    const-string v0, "\u0423\u043c\u043d\u044b\u0439"

    return-object v0

    :cond_163f
    const-string v1, "Smart Wizard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1648

    return-object v14

    :cond_1648
    const-string v1, "Smooth motion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1653

    const-string v0, "\u041f\u043b\u0430\u0432\u043d\u043e\u0435 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_1653
    const-string v1, "Sorted by name, A to Z"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165e

    const-string v0, "\u041f\u043e \u043d\u0430\u0437\u0432\u0430\u043d\u0438\u044e, \u043e\u0442 \u0410 \u0434\u043e \u042f"

    return-object v0

    :cond_165e
    const-string v1, "Sound"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1669

    const-string v0, "\u0417\u0432\u0443\u043a"

    return-object v0

    :cond_1669
    const-string v1, "Speed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1674

    const-string v0, "\u0421\u043a\u043e\u0440\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_1674
    const-string v1, "Speed (Bilinear)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167f

    const-string v0, "\u0421\u043a\u043e\u0440\u043e\u0441\u0442\u044c (\u0431\u0438\u043b\u0438\u043d\u0435\u0439\u043d\u0430\u044f)"

    return-object v0

    :cond_167f
    const-string v1, "Splitscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168a

    const-string v0, "\u0420\u0430\u0437\u0434\u0435\u043b\u0435\u043d\u0438\u0435 \u044d\u043a\u0440\u0430\u043d\u0430"

    return-object v0

    :cond_168a
    const-string v1, "Spoof device model properties for games to unlock 90/120 FPS & max graphics settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1695

    const-string v0, "\u041f\u043e\u0434\u043c\u0435\u043d\u044f\u0442\u044c \u043c\u043e\u0434\u0435\u043b\u044c \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430 \u0432 \u0438\u0433\u0440\u0430\u0445 \u0434\u043b\u044f \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u043a 90/120 FPS \u0438 \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u043e\u0439 \u0433\u0440\u0430\u0444\u0438\u043a\u0435"

    return-object v0

    :cond_1695
    const-string v1, "Spoofing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16a0

    const-string v0, "\u041f\u043e\u0434\u043c\u0435\u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    return-object v0

    :cond_16a0
    const-string v1, "Square"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16ab

    const-string v0, "\u041a\u0432\u0430\u0434\u0440\u0430\u0442"

    return-object v0

    :cond_16ab
    const-string v1, "Start blank"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b6

    const-string v0, "\u041d\u0430\u0447\u0430\u0442\u044c \u0441 \u043f\u0443\u0441\u0442\u043e\u0433\u043e"

    return-object v0

    :cond_16b6
    const-string v1, "Start from"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16c1

    const-string v0, "\u0412\u0437\u044f\u0442\u044c \u0437\u0430 \u043e\u0441\u043d\u043e\u0432\u0443"

    return-object v0

    :cond_16c1
    const-string v1, "State"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16cc

    const-string v0, "\u0421\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u0435"

    return-object v0

    :cond_16cc
    const-string v1, "Strength"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d5

    return-object v12

    :cond_16d5
    const-string v1, "Strip buttons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e0

    const-string v0, "\u041a\u043d\u043e\u043f\u043a\u0438 \u0441\u043f\u0438\u0441\u043a\u0430"

    return-object v0

    :cond_16e0
    const-string v1, "Style imported"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16eb

    const-string v0, "\u0421\u0442\u0438\u043b\u044c \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u043d"

    return-object v0

    :cond_16eb
    const-string v1, "Super Sharp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f6

    const-string v0, "\u041e\u0447\u0435\u043d\u044c \u0440\u0435\u0437\u043a\u0438\u0439"

    return-object v0

    :cond_16f6
    const-string v1, "Super Sharp (1.5\u00d7)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1701

    const-string v0, "\u0412\u044b\u0441\u043e\u043a\u0430\u044f \u0440\u0435\u0437\u043a\u043e\u0441\u0442\u044c (1,5\u00d7)"

    return-object v0

    :cond_1701
    const-string v1, "Super report rate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170c

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u043d\u0430\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u043e\u043f\u0440\u043e\u0441\u0430"

    return-object v0

    :cond_170c
    const-string v1, "Suspend charging at"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1717

    const-string v0, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0437\u0430\u0440\u044f\u0434\u043a\u0443 \u043f\u0440\u0438"

    return-object v0

    :cond_1717
    const-string v1, "Swipe along the dashed line"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1722

    const-string v0, "\u041f\u0440\u043e\u0432\u043e\u0434\u0438\u0442\u0435 \u043f\u043e \u043f\u0443\u043d\u043a\u0442\u0438\u0440\u043d\u043e\u0439 \u043b\u0438\u043d\u0438\u0438"

    return-object v0

    :cond_1722
    const-string v1, "Swipe tracking test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_172d

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0442\u043e\u0447\u043d\u043e\u0441\u0442\u0438 \u0441\u0432\u0430\u0439\u043f\u0430"

    return-object v0

    :cond_172d
    const-string v1, "System"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1738

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u0430"

    return-object v0

    :cond_1738
    const-string v1, "TAP TARGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1743

    const-string v0, "\u0426\u0415\u041b\u042c \u041a\u0410\u0421\u0410\u041d\u0418\u042f"

    return-object v0

    :cond_1743
    const-string v1, "TEMPERATURE MONITOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_174e

    const-string v0, "\u041c\u041e\u041d\u0418\u0422\u041e\u0420\u0418\u041d\u0413 \u0422\u0415\u041c\u041f\u0415\u0420\u0410\u0422\u0423\u0420\u042b"

    return-object v0

    :cond_174e
    const-string v1, "TOUCH LAB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1759

    const-string v0, "\u041f\u0420\u041e\u0412\u0415\u0420\u041a\u0410 \u0421\u0415\u041d\u0421\u041e\u0420\u0410"

    return-object v0

    :cond_1759
    const-string v1, "Tab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1764

    const-string v0, "\u0412\u043a\u043b\u0430\u0434\u043a\u0430"

    return-object v0

    :cond_1764
    const-string v1, "Tall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176f

    const-string v0, "\u0412\u044b\u0441\u043e\u043a\u0438\u0439"

    return-object v0

    :cond_176f
    const-string v1, "Tap + and pick a one-click preset to get started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_177a

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 + \u0438 \u0432\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0433\u043e\u0442\u043e\u0432\u044b\u0439 \u043d\u0430\u0431\u043e\u0440"

    return-object v0

    :cond_177a
    const-string v1, "Tap + and pick a preset to start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1785

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 + \u0438 \u0432\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043d\u0430\u0431\u043e\u0440"

    return-object v0

    :cond_1785
    const-string v1, "Tap anywhere to measure \u00b7 or spawn a target"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1790

    const-string v0, "\u041a\u043e\u0441\u043d\u0438\u0442\u0435\u0441\u044c \u044d\u043a\u0440\u0430\u043d\u0430 \u0434\u043b\u044f \u0437\u0430\u043c\u0435\u0440\u0430 \u0438\u043b\u0438 \u0441\u043e\u0437\u0434\u0430\u0439\u0442\u0435 \u0446\u0435\u043b\u044c"

    return-object v0

    :cond_1790
    const-string v1, "Tap latency benchmark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_179b

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0437\u0430\u0434\u0435\u0440\u0436\u043a\u0438 \u043a\u0430\u0441\u0430\u043d\u0438\u044f"

    return-object v0

    :cond_179b
    const-string v1, "Tap to cycle: Auto \u2192 Always \u2192 Never"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17a6

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u043b\u044f \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f: \u0410\u0432\u0442\u043e \u2192 \u0412\u0441\u0435\u0433\u0434\u0430 \u2192 \u041d\u0438\u043a\u043e\u0433\u0434\u0430"

    return-object v0

    :cond_17a6
    const-string v1, "Target temp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17b1

    const-string v0, "\u0426\u0435\u043b\u0435\u0432\u0430\u044f \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430"

    return-object v0

    :cond_17b1
    const-string v1, "Temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17ba

    return-object v9

    :cond_17ba
    const-string v1, "Test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17c5

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c"

    return-object v0

    :cond_17c5
    const-string v1, "Test apply"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d0

    const-string v0, "\u041f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c \u0434\u043b\u044f \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0438"

    return-object v0

    :cond_17d0
    const-string v1, "Test now"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17db

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0441\u0435\u0439\u0447\u0430\u0441"

    return-object v0

    :cond_17db
    const-string v1, "Texture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e6

    const-string v0, "\u0422\u0435\u043a\u0441\u0442\u0443\u0440\u044b"

    return-object v0

    :cond_17e6
    const-string v1, "Texture Filtering Quality"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17f1

    const-string v0, "\u041a\u0430\u0447\u0435\u0441\u0442\u0432\u043e \u0444\u0438\u043b\u044c\u0442\u0440\u0430\u0446\u0438\u0438 \u0442\u0435\u043a\u0441\u0442\u0443\u0440"

    return-object v0

    :cond_17f1
    const-string v1, "Thermal & Power"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17fc

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0438 \u043f\u0438\u0442\u0430\u043d\u0438\u0435"

    return-object v0

    :cond_17fc
    const-string v1, "Thread statistics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1807

    const-string v0, "\u0421\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430 \u043f\u043e\u0442\u043e\u043a\u043e\u0432"

    return-object v0

    :cond_1807
    const-string v1, "This game will no longer receive Game Space optimisations and its per-game tuning will be cleared."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1812

    const-string v0, "\u041e\u043f\u0442\u0438\u043c\u0438\u0437\u0430\u0446\u0438\u0438 \u044d\u0442\u043e\u0439 \u0438\u0433\u0440\u044b \u0431\u0443\u0434\u0443\u0442 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u044b, \u0430 \u0435\u0451 \u0438\u043d\u0434\u0438\u0432\u0438\u0434\u0443\u0430\u043b\u044c\u043d\u044b\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0443\u0434\u0430\u043b\u0435\u043d\u044b."

    return-object v0

    :cond_1812
    const-string v1, "This profile will be removed permanently."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_181d

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0431\u0443\u0434\u0435\u0442 \u0443\u0434\u0430\u043b\u0451\u043d \u0431\u0435\u0437 \u0432\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f."

    return-object v0

    :cond_181d
    const-string v1, "Tiers generated from wizard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1828

    const-string v0, "\u0421\u0442\u0443\u043f\u0435\u043d\u0438 \u0441\u043e\u0437\u0434\u0430\u043d\u044b \u043c\u0430\u0441\u0442\u0435\u0440\u043e\u043c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    return-object v0

    :cond_1828
    const-string v1, "Tint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1833

    const-string v0, "\u041e\u0442\u0442\u0435\u043d\u043e\u043a"

    return-object v0

    :cond_1833
    const-string v1, "Tip: tap any control below \u2014 the matching part lights up in the preview."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183e

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u043d\u0430 \u043b\u044e\u0431\u043e\u0439 \u044d\u043b\u0435\u043c\u0435\u043d\u0442 \u043d\u0438\u0436\u0435 \u2014 \u0441\u043e\u043e\u0442\u0432\u0435\u0442\u0441\u0442\u0432\u0443\u044e\u0449\u0430\u044f \u0447\u0430\u0441\u0442\u044c \u043f\u043e\u0434\u0441\u0432\u0435\u0442\u0438\u0442\u0441\u044f \u0432 \u043f\u0440\u0435\u0434\u043f\u0440\u043e\u0441\u043c\u043e\u0442\u0440\u0435."

    return-object v0

    :cond_183e
    const-string v1, "Toggle layout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1849

    const-string v0, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u0440\u0430\u0441\u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_1849
    const-string v1, "Toggle library"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1854

    const-string v0, "\u041f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0431\u0438\u0431\u043b\u0438\u043e\u0442\u0435\u043a\u0443"

    return-object v0

    :cond_1854
    const-string v1, "Toggle vitals"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_185f

    const-string v0, "\u041f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b\u0438"

    return-object v0

    :cond_185f
    const-string v1, "Tool"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_186a

    const-string v0, "\u0418\u043d\u0441\u0442\u0440\u0443\u043c\u0435\u043d\u0442"

    return-object v0

    :cond_186a
    const-string v1, "Top rail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1875

    const-string v0, "\u0412\u0435\u0440\u0445\u043d\u044f\u044f \u043f\u0430\u043d\u0435\u043b\u044c"

    return-object v0

    :cond_1875
    const-string v1, "Total"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1880

    const-string v0, "\u0412\u0441\u0435\u0433\u043e"

    return-object v0

    :cond_1880
    const-string v1, "Touch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_188b

    const-string v0, "\u0421\u0435\u043d\u0441\u043e\u0440"

    return-object v0

    :cond_188b
    const-string v1, "Touch & drag \u00b7 multi-touch supported"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1896

    const-string v0, "\u041a\u0430\u0441\u0430\u0439\u0442\u0435\u0441\u044c \u0438 \u043f\u0440\u043e\u0432\u043e\u0434\u0438\u0442\u0435 \u2014 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0435\u0442\u0441\u044f \u043c\u0443\u043b\u044c\u0442\u0438\u0442\u0430\u0447"

    return-object v0

    :cond_1896
    const-string v1, "Trigger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a1

    const-string v0, "\u041f\u043e\u0440\u043e\u0433 \u0441\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u043d\u0438\u044f"

    return-object v0

    :cond_18a1
    const-string v1, "Tune"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18ac

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c"

    return-object v0

    :cond_18ac
    const-string v1, "Ultra Low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18b7

    const-string v0, "\u041e\u0447\u0435\u043d\u044c \u043d\u0438\u0437\u043a\u0438\u0439"

    return-object v0

    :cond_18b7
    const-string v1, "Ultra Sharp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18c2

    const-string v0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u0430\u044f \u0440\u0435\u0437\u043a\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_18c2
    const-string v1, "Ultra Sharp (2\u00d7)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18cd

    const-string v0, "\u041c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u0430\u044f \u0440\u0435\u0437\u043a\u043e\u0441\u0442\u044c (2\u00d7)"

    return-object v0

    :cond_18cd
    const-string v1, "Ultra-slow overnight charging. Minimal heat, max battery health."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d8

    const-string v0, "\u041e\u0447\u0435\u043d\u044c \u043c\u0435\u0434\u043b\u0435\u043d\u043d\u0430\u044f \u043d\u043e\u0447\u043d\u0430\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0430: \u043c\u0438\u043d\u0438\u043c\u0443\u043c \u043d\u0430\u0433\u0440\u0435\u0432\u0430 \u0438 \u0431\u0435\u0440\u0435\u0436\u043d\u043e\u0435 \u043e\u0442\u043d\u043e\u0448\u0435\u043d\u0438\u0435 \u043a \u0431\u0430\u0442\u0430\u0440\u0435\u0435."

    return-object v0

    :cond_18d8
    const-string v1, "Under icon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e3

    const-string v0, "\u041f\u043e\u0434 \u0437\u043d\u0430\u0447\u043a\u043e\u043c"

    return-object v0

    :cond_18e3
    const-string v1, "Unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18ee

    const-string v0, "\u041d\u0435\u0438\u0437\u0432\u0435\u0441\u0442\u043d\u043e"

    return-object v0

    :cond_18ee
    const-string v1, "Unlimited"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18f9

    const-string v0, "\u0411\u0435\u0437 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_18f9
    const-string v1, "Use HEVC (H.265)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1904

    const-string v0, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c HEVC (H.265)"

    return-object v0

    :cond_1904
    const-string v1, "User"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_190f

    const-string v0, "\u041f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0439"

    return-object v0

    :cond_190f
    const-string v1, "Variable rate shading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_191a

    const-string v0, "\u041f\u0435\u0440\u0435\u043c\u0435\u043d\u043d\u0430\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u0437\u0430\u0442\u0435\u043d\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_191a
    const-string v1, "Vendor Default (GLOBAL)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1925

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e (GLOBAL)"

    return-object v0

    :cond_1925
    const-string v1, "Vendor Gaming (MGAME)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1930

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0438\u0433\u0440\u043e\u0432\u043e\u0439 (MGAME)"

    return-object v0

    :cond_1930
    const-string v1, "Vendor Video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_193b

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0434\u043b\u044f \u0432\u0438\u0434\u0435\u043e"

    return-object v0

    :cond_193b
    const-string v1, "Vendor default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1946

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e"

    return-object v0

    :cond_1946
    const-string v1, "Vendor templates"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1951

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0435 \u0448\u0430\u0431\u043b\u043e\u043d\u044b"

    return-object v0

    :cond_1951
    const-string v1, "Vendor-like. Good speed with sensible thermal protection."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_195c

    const-string v0, "\u041a\u0430\u043a \u0443 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044f: \u0432\u044b\u0441\u043e\u043a\u0430\u044f \u0441\u043a\u043e\u0440\u043e\u0441\u0442\u044c \u0438 \u0440\u0430\u0437\u0443\u043c\u043d\u0430\u044f \u0437\u0430\u0449\u0438\u0442\u0430 \u043e\u0442 \u043f\u0435\u0440\u0435\u0433\u0440\u0435\u0432\u0430."

    return-object v0

    :cond_195c
    const-string v1, "Vertical offset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1967

    const-string v0, "\u0421\u043c\u0435\u0449\u0435\u043d\u0438\u0435 \u043f\u043e \u0432\u0435\u0440\u0442\u0438\u043a\u0430\u043b\u0438"

    return-object v0

    :cond_1967
    const-string v1, "Vertical rail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1972

    const-string v0, "\u0412\u0435\u0440\u0442\u0438\u043a\u0430\u043b\u044c\u043d\u0430\u044f \u043f\u0430\u043d\u0435\u043b\u044c"

    return-object v0

    :cond_1972
    const-string v1, "Very Low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_197d

    const-string v0, "\u041e\u0447\u0435\u043d\u044c \u043d\u0438\u0437\u043a\u0438\u0439"

    return-object v0

    :cond_197d
    const-string v1, "Vibrance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1988

    const-string v0, "\u041a\u0440\u0430\u0441\u043e\u0447\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_1988
    const-string v1, "Vibrate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1993

    const-string v0, "\u0412\u0438\u0431\u0440\u0430\u0446\u0438\u044f"

    return-object v0

    :cond_1993
    const-string v1, "Video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_199e

    const-string v0, "\u0412\u0438\u0434\u0435\u043e"

    return-object v0

    :cond_199e
    const-string v1, "Video Chat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19a9

    const-string v0, "\u0412\u0438\u0434\u0435\u043e\u0437\u0432\u043e\u043d\u043e\u043a"

    return-object v0

    :cond_19a9
    const-string v1, "Video apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19b4

    const-string v0, "\u0412\u0438\u0434\u0435\u043e\u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_19b4
    const-string v1, "Video players are detected automatically while they play. Use the list above only when detection gets an app wrong."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19bf

    const-string v0, "\u0412\u0438\u0434\u0435\u043e\u043f\u043b\u0435\u0435\u0440\u044b \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u044f\u044e\u0442\u0441\u044f \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438 \u043f\u0440\u0438 \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u0438. \u0418\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0439\u0442\u0435 \u0441\u043f\u0438\u0441\u043e\u043a \u0432\u044b\u0448\u0435, \u0442\u043e\u043b\u044c\u043a\u043e \u0435\u0441\u043b\u0438 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u0435\u043d\u043e \u043d\u0435\u0432\u0435\u0440\u043d\u043e."

    return-object v0

    :cond_19bf
    const-string v1, "Vignette"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19ca

    const-string v0, "\u0412\u0438\u043d\u044c\u0435\u0442\u043a\u0430"

    return-object v0

    :cond_19ca
    const-string v1, "Vivid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19d5

    const-string v0, "\u042f\u0440\u043a\u0438\u0439"

    return-object v0

    :cond_19d5
    const-string v1, "White point"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19e0

    const-string v0, "\u0422\u043e\u0447\u043a\u0430 \u0431\u0435\u043b\u043e\u0433\u043e"

    return-object v0

    :cond_19e0
    const-string v1, "Wide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19eb

    const-string v0, "\u0428\u0438\u0440\u043e\u043a\u0438\u0439"

    return-object v0

    :cond_19eb
    const-string v1, "Width"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19f6

    const-string v0, "\u0428\u0438\u0440\u0438\u043d\u0430"

    return-object v0

    :cond_19f6
    const-string v1, "Work"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a01

    const-string v0, "\u0420\u0430\u0431\u043e\u0442\u0430"

    return-object v0

    :cond_1a01
    const-string v1, "Xiaomi vendor profiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a0c

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u0438 Xiaomi"

    return-object v0

    :cond_1a0c
    const-string v1, "2\u00d7 Frame Generation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a17

    const-string v0, "\u0413\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432 2\u00d7"

    return-object v0

    :cond_1a17
    const-string v1, "3\u00d7 Frame Generation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a22

    const-string v0, "\u0413\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432 3\u00d7"

    return-object v0

    :cond_1a22
    const-string v1, "4\u00d7 Frame Generation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a2d

    const-string v0, "\u0413\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432 4\u00d7"

    return-object v0

    :cond_1a2d
    const-string v1, "4K Recording"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a38

    const-string v0, "\u0417\u0430\u043f\u0438\u0441\u044c \u0432 4K"

    return-object v0

    :cond_1a38
    const-string v1, "Aggressiveness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a43

    const-string v0, "\u0421\u0442\u0435\u043f\u0435\u043d\u044c \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_1a43
    const-string v1, "Anisotropic Filtering (AF)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a4e

    const-string v0, "\u0410\u043d\u0438\u0437\u043e\u0442\u0440\u043e\u043f\u043d\u0430\u044f \u0444\u0438\u043b\u044c\u0442\u0440\u0430\u0446\u0438\u044f (AF)"

    return-object v0

    :cond_1a4e
    const-string v1, "Anti-Aliasing (MSAA)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a59

    const-string v0, "\u0421\u0433\u043b\u0430\u0436\u0438\u0432\u0430\u043d\u0438\u0435 (MSAA)"

    return-object v0

    :cond_1a59
    const-string v1, "0 W = follow the global charging profile."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a64

    const-string v0, "0 \u0412\u0442 \u2014 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c \u043e\u0431\u0449\u0438\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0437\u0430\u0440\u044f\u0434\u043a\u0438."

    return-object v0

    :cond_1a64
    const-string v1, "Icon Packs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a6f

    const-string v0, "\u041d\u0430\u0431\u043e\u0440\u044b \u0437\u043d\u0430\u0447\u043a\u043e\u0432"

    return-object v0

    :cond_1a6f
    const-string v1, "Charging Animation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a7a

    const-string v0, "\u0410\u043d\u0438\u043c\u0430\u0446\u0438\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    return-object v0

    :cond_1a7a
    const-string v1, "Back Gesture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a85

    const-string v0, "\u0416\u0435\u0441\u0442 \u00ab\u041d\u0430\u0437\u0430\u0434\u00bb"

    return-object v0

    :cond_1a85
    const-string v1, "Battery Style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a90

    const-string v0, "\u0421\u0442\u0438\u043b\u044c \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_1a90
    const-string v1, "QuickSettings Style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a9b

    const-string v0, "\u0421\u0442\u0438\u043b\u044c \u0431\u044b\u0441\u0442\u0440\u044b\u0445 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043a"

    return-object v0

    :cond_1a9b
    const-string v1, "QuickSettings tiles and brightness slider style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa6

    const-string v0, "\u041e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435 \u043f\u043b\u0438\u0442\u043e\u043a \u0431\u044b\u0441\u0442\u0440\u044b\u0445 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043a \u0438 \u043f\u043e\u043b\u0437\u0443\u043d\u043a\u0430 \u044f\u0440\u043a\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_1aa6
    const-string v1, "UI Style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ab1

    const-string v0, "\u0421\u0442\u0438\u043b\u044c \u0438\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441\u0430"

    return-object v0

    :cond_1ab1
    const-string v1, "Overall UI appearance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1abc

    const-string v0, "\u041e\u0431\u0449\u0435\u0435 \u043e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435 \u0438\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441\u0430"

    return-object v0

    :cond_1abc
    const-string v1, "Volume Panel Style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ac7

    const-string v0, "\u0421\u0442\u0438\u043b\u044c \u043f\u0430\u043d\u0435\u043b\u0438 \u0433\u0440\u043e\u043c\u043a\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_1ac7
    const-string v1, "Volume panel appearance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ad2

    const-string v0, "\u041e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435 \u043f\u0430\u043d\u0435\u043b\u0438 \u0433\u0440\u043e\u043c\u043a\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_1ad2
    const-string v1, "Mobile network indicators in status bar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1add

    const-string v0, "\u0418\u043d\u0434\u0438\u043a\u0430\u0442\u043e\u0440\u044b \u043c\u043e\u0431\u0438\u043b\u044c\u043d\u043e\u0439 \u0441\u0435\u0442\u0438 \u0432 \u0441\u0442\u0440\u043e\u043a\u0435 \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u044f"

    return-object v0

    :cond_1add
    const-string v1, "WiFi signal indicators in status bar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ae8

    const-string v0, "\u0418\u043d\u0434\u0438\u043a\u0430\u0442\u043e\u0440\u044b Wi-Fi \u0432 \u0441\u0442\u0440\u043e\u043a\u0435 \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u044f"

    return-object v0

    :cond_1ae8
    const-string v1, "Status bar and quick settings icons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af3

    const-string v0, "\u0417\u043d\u0430\u0447\u043a\u0438 \u0441\u0442\u0440\u043e\u043a\u0438 \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u044f \u0438 \u0431\u044b\u0441\u0442\u0440\u044b\u0445 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043a"

    return-object v0

    :cond_1af3
    const-string v1, "System Default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1afc

    return-object v16

    :cond_1afc
    const-string v1, "System UI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b07

    const-string v0, "\u0418\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441 \u0441\u0438\u0441\u0442\u0435\u043c\u044b"

    return-object v0

    :cond_1b07
    const-string v1, "Android Framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b12

    const-string v0, "\u0421\u0438\u0441\u0442\u0435\u043c\u0430 Android"

    return-object v0

    :cond_1b12
    const-string v1, "Core Android framework icons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b1d

    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u044b\u0435 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0435 \u0437\u043d\u0430\u0447\u043a\u0438 Android"

    return-object v0

    :cond_1b1d
    const-string v1, "Theme component"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b28

    const-string v0, "\u041a\u043e\u043c\u043f\u043e\u043d\u0435\u043d\u0442 \u0442\u0435\u043c\u044b"

    return-object v0

    :cond_1b28
    const-string v1, "Theme files not found. Please download again."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b33

    const-string v0, "\u0424\u0430\u0439\u043b\u044b \u0442\u0435\u043c\u044b \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u044b. \u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u0435 \u0435\u0451 \u0435\u0449\u0451 \u0440\u0430\u0437."

    return-object v0

    :cond_1b33
    const-string v1, "Installed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b3e

    const-string v0, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e"

    return-object v0

    :cond_1b3e
    const-string v1, "Installing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b49

    const-string v0, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0430"

    return-object v0

    :cond_1b49
    const-string v1, "Starting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b54

    const-string v0, "\u0417\u0430\u043f\u0443\u0441\u043a"

    return-object v0

    :cond_1b54
    const-string v1, "Success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b5d

    return-object v6

    :cond_1b5d
    const-string v1, "Accept"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b68

    const-string v0, "\u041f\u0440\u0438\u043d\u044f\u0442\u044c"

    return-object v0

    :cond_1b68
    const-string v1, "Currently from: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b73

    const-string v0, "\u0421\u0435\u0439\u0447\u0430\u0441 \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u0443\u0435\u0442\u0441\u044f: "

    return-object v0

    :cond_1b73
    const-string v1, "No overlays available"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b7e

    const-string v0, "\u041d\u0435\u0442 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u044b\u0445 \u043e\u0432\u0435\u0440\u043b\u0435\u0435\u0432"

    return-object v0

    :cond_1b7e
    const-string v1, "Failed to apply theme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b89

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c \u0442\u0435\u043c\u0443"

    return-object v0

    :cond_1b89
    const-string v1, "Failed to load themes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b94

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0442\u0435\u043c\u044b"

    return-object v0

    :cond_1b94
    const-string v1, "Failed to load image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b9f

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_1b9f
    const-string v1, "Failed to install APK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1baa

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c APK"

    return-object v0

    :cond_1baa
    const-string v1, "Failed to uninstall package"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bb5

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0443\u0434\u0430\u043b\u0438\u0442\u044c \u043f\u0430\u043a\u0435\u0442"

    return-object v0

    :cond_1bb5
    const-string v1, "Locally installed theme overlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bc0

    const-string v0, "\u041b\u043e\u043a\u0430\u043b\u044c\u043d\u043e \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u043e\u0435 \u043e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_1bc0
    const-string v1, "Manually installed theme package"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bcb

    const-string v0, "\u0422\u0435\u043c\u0430, \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u0430\u044f \u0432\u0440\u0443\u0447\u043d\u0443\u044e"

    return-object v0

    :cond_1bcb
    const-string v1, "Themes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bd6

    const-string v0, "\u0422\u0435\u043c\u044b"

    return-object v0

    :cond_1bd6
    const-string v1, "Add to Quick Toggles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1be1

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0432 \u0431\u044b\u0441\u0442\u0440\u044b\u0435 \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0430\u0442\u0435\u043b\u0438"

    return-object v0

    :cond_1be1
    const-string v1, "Add to Tool Grid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bec

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0432 \u043f\u0430\u043d\u0435\u043b\u044c \u0438\u043d\u0441\u0442\u0440\u0443\u043c\u0435\u043d\u0442\u043e\u0432"

    return-object v0

    :cond_1bec
    const-string v1, "New charging profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bf7

    const-string v0, "\u041d\u043e\u0432\u044b\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    return-object v0

    :cond_1bf7
    const-string v1, "Edit charging profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c00

    return-object v19

    :cond_1c00
    const-string v1, "Clear temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0b

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0441\u043d\u044f\u0442\u0438\u044f \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_1c0b
    const-string v1, "PID target"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c16

    const-string v0, "\u0426\u0435\u043b\u044c PID"

    return-object v0

    :cond_1c16
    const-string v1, "Trigger temperature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c21

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0441\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u043d\u0438\u044f"

    return-object v0

    :cond_1c21
    const-string v1, "Use a built-in tuning preset instead of the manual values"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c2c

    const-string v0, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c \u0433\u043e\u0442\u043e\u0432\u044b\u0439 \u043d\u0430\u0431\u043e\u0440 \u0432\u043c\u0435\u0441\u0442\u043e \u0440\u0443\u0447\u043d\u044b\u0445 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_1c2c
    const-string v1, "Expert mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c37

    const-string v0, "\u042d\u043a\u0441\u043f\u0435\u0440\u0442\u043d\u044b\u0439 \u0440\u0435\u0436\u0438\u043c"

    return-object v0

    :cond_1c37
    const-string v1, "Expert preset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c42

    const-string v0, "\u042d\u043a\u0441\u043f\u0435\u0440\u0442\u043d\u044b\u0439 \u043d\u0430\u0431\u043e\u0440"

    return-object v0

    :cond_1c42
    const-string v1, "Game %1$d | Gen %2$d | Total %3$d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c4d

    const-string v0, "\u0418\u0433\u0440\u0430 %1$d | \u0413\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f %2$d | \u0412\u0441\u0435\u0433\u043e %3$d"

    return-object v0

    :cond_1c4d
    const-string v1, "game: min %1$d | avg %2$d | max %3$d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c58

    const-string v0, "\u0438\u0433\u0440\u0430: \u043c\u0438\u043d. %1$d | \u0441\u0440\u0435\u0434. %2$d | \u043c\u0430\u043a\u0441. %3$d"

    return-object v0

    :cond_1c58
    const-string v1, "Launch game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c63

    const-string v0, "\u0417\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u0438\u0433\u0440\u0443"

    return-object v0

    :cond_1c63
    const-string v1, "Long press to reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c6e

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0438 \u0443\u0434\u0435\u0440\u0436\u0438\u0432\u0430\u0439\u0442\u0435 \u0434\u043b\u044f \u0441\u0431\u0440\u043e\u0441\u0430"

    return-object v0

    :cond_1c6e
    const-string v1, "Open Window %1$d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c79

    const-string v0, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u043e\u043a\u043d\u043e %1$d"

    return-object v0

    :cond_1c79
    const-string v1, "Move to Quick Toggles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c84

    const-string v0, "\u041f\u0435\u0440\u0435\u043c\u0435\u0441\u0442\u0438\u0442\u044c \u0432 \u0431\u044b\u0441\u0442\u0440\u044b\u0435 \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0430\u0442\u0435\u043b\u0438"

    return-object v0

    :cond_1c84
    const-string v1, "Move to Tool Grid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c8f

    const-string v0, "\u041f\u0435\u0440\u0435\u043c\u0435\u0441\u0442\u0438\u0442\u044c \u0432 \u043f\u0430\u043d\u0435\u043b\u044c \u0438\u043d\u0441\u0442\u0440\u0443\u043c\u0435\u043d\u0442\u043e\u0432"

    return-object v0

    :cond_1c8f
    const-string v1, "Tap + from available tiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c9a

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 + \u0443 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u044b\u0445 \u043f\u043b\u0438\u0442\u043e\u043a"

    return-object v0

    :cond_1c9a
    const-string v1, "Electric Blue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ca5

    const-string v0, "\u042f\u0440\u043a\u043e-\u0441\u0438\u043d\u0438\u0439"

    return-object v0

    :cond_1ca5
    const-string v1, "Cyan (Classic)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cb0

    const-string v0, "\u0413\u043e\u043b\u0443\u0431\u043e\u0439 (\u043a\u043b\u0430\u0441\u0441\u0438\u0447\u0435\u0441\u043a\u0438\u0439)"

    return-object v0

    :cond_1cb0
    const-string v1, "Emerald Green"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cbb

    const-string v0, "\u0418\u0437\u0443\u043c\u0440\u0443\u0434\u043d\u044b\u0439"

    return-object v0

    :cond_1cbb
    const-string v1, "Sunset Orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cc6

    const-string v0, "\u041e\u0440\u0430\u043d\u0436\u0435\u0432\u044b\u0439 \u0437\u0430\u043a\u0430\u0442"

    return-object v0

    :cond_1cc6
    const-string v1, "Royal Purple"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cd1

    const-string v0, "\u041d\u0430\u0441\u044b\u0449\u0435\u043d\u043d\u044b\u0439 \u0444\u0438\u043e\u043b\u0435\u0442\u043e\u0432\u044b\u0439"

    return-object v0

    :cond_1cd1
    const-string v1, "Cherry Red"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cdc

    const-string v0, "\u0412\u0438\u0448\u043d\u0451\u0432\u044b\u0439"

    return-object v0

    :cond_1cdc
    const-string v1, "Arctic White"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ce7

    const-string v0, "\u0410\u0440\u043a\u0442\u0438\u0447\u0435\u0441\u043a\u0438\u0439 \u0431\u0435\u043b\u044b\u0439"

    return-object v0

    :cond_1ce7
    const-string v1, "Golden Yellow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cf2

    const-string v0, "\u0417\u043e\u043b\u043e\u0442\u0438\u0441\u0442\u043e-\u0436\u0451\u043b\u0442\u044b\u0439"

    return-object v0

    :cond_1cf2
    const-string v1, "Change the accent color of the game overlay panel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cfd

    const-string v0, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u0446\u0432\u0435\u0442 \u0430\u043a\u0446\u0435\u043d\u0442\u0430 \u0438\u0433\u0440\u043e\u0432\u043e\u0439 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_1cfd
    const-string v1, "Panel accent color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d08

    const-string v0, "\u0426\u0432\u0435\u0442 \u0430\u043a\u0446\u0435\u043d\u0442\u0430 \u043f\u0430\u043d\u0435\u043b\u0438"

    return-object v0

    :cond_1d08
    const-string v1, "Controls how far the GPU predicts each frame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d13

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u0433\u043b\u0443\u0431\u0438\u043d\u0443 \u043f\u0440\u0435\u0434\u0441\u043a\u0430\u0437\u0430\u043d\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432 GPU"

    return-object v0

    :cond_1d13
    const-string v1, "Extrapolation Strength"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1e

    const-string v0, "\u0421\u0438\u043b\u0430 \u044d\u043a\u0441\u0442\u0440\u0430\u043f\u043e\u043b\u044f\u0446\u0438\u0438"

    return-object v0

    :cond_1d1e
    const-string v1, "Frame Generation (AFME)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d29

    const-string v0, "\u0413\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432 (AFME)"

    return-object v0

    :cond_1d29
    const-string v1, "Boost saturation, contrast and HDR quality for gaming"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d34

    const-string v0, "\u0423\u0441\u0438\u043b\u0438\u0442\u044c \u043d\u0430\u0441\u044b\u0449\u0435\u043d\u043d\u043e\u0441\u0442\u044c, \u043a\u043e\u043d\u0442\u0440\u0430\u0441\u0442 \u0438 HDR \u0432 \u0438\u0433\u0440\u0435"

    return-object v0

    :cond_1d34
    const-string v1, "Game Color Enhance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d3f

    const-string v0, "\u0423\u043b\u0443\u0447\u0448\u0435\u043d\u0438\u0435 \u0446\u0432\u0435\u0442\u0430 \u0432 \u0438\u0433\u0440\u0435"

    return-object v0

    :cond_1d3f
    const-string v1, "Force GPU rendering for this game (reduces HW overlay latency)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d4a

    const-string v0, "\u041f\u0440\u0438\u043d\u0443\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u0430\u044f GPU-\u043a\u043e\u043c\u043f\u043e\u0437\u0438\u0446\u0438\u044f \u0434\u043b\u044f \u0438\u0433\u0440\u044b \u0434\u043b\u044f \u0441\u043d\u0438\u0436\u0435\u043d\u0438\u044f \u0437\u0430\u0434\u0435\u0440\u0436\u043a\u0438 \u043d\u0430\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_1d4a
    const-string v1, "Reduce rendering resolution to improve performance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d55

    const-string v0, "\u0421\u043d\u0438\u0437\u0438\u0442\u044c \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043e\u0442\u0440\u0438\u0441\u043e\u0432\u043a\u0438 \u0434\u043b\u044f \u043f\u043e\u0432\u044b\u0448\u0435\u043d\u0438\u044f \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_1d55
    const-string v1, "Game Resolution"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d60

    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_1d60
    const-string v1, "Sharpening, super resolution, and motion interpolation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d6b

    const-string v0, "\u0420\u0435\u0437\u043a\u043e\u0441\u0442\u044c, \u043f\u043e\u0432\u044b\u0448\u0435\u043d\u0438\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f \u0438 \u0438\u043d\u0442\u0435\u0440\u043f\u043e\u043b\u044f\u0446\u0438\u044f \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_1d6b
    const-string v1, "Graphics Enhancement"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d76

    const-string v0, "\u0423\u043b\u0443\u0447\u0448\u0435\u043d\u0438\u0435 \u0433\u0440\u0430\u0444\u0438\u043a\u0438"

    return-object v0

    :cond_1d76
    const-string v1, "Enable HWC smooth motion interpolation and frame pacing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d81

    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0438\u0442\u044c \u0438\u043d\u0442\u0435\u0440\u043f\u043e\u043b\u044f\u0446\u0438\u044e HWC \u0438 \u0440\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u0443\u044e \u043f\u043e\u0434\u0430\u0447\u0443 \u043a\u0430\u0434\u0440\u043e\u0432"

    return-object v0

    :cond_1d81
    const-string v1, "Smooth Motion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8c

    const-string v0, "\u041f\u043b\u0430\u0432\u043d\u043e\u0435 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_1d8c
    const-string v1, "Control CPU/GPU thermal behavior for this game"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d97

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u043d\u044b\u0435 \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f CPU \u0438 GPU \u0434\u043b\u044f \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_1d97
    const-string v1, "Thermal Profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1da0

    return-object v10

    :cond_1da0
    const-string v1, "Reduce GPU shading on screen edges for better performance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dab

    const-string v0, "\u0421\u043d\u0438\u0437\u0438\u0442\u044c \u0434\u0435\u0442\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044e \u0437\u0430\u0442\u0435\u043d\u0435\u043d\u0438\u044f \u043f\u043e \u043a\u0440\u0430\u044f\u043c \u0434\u043b\u044f \u043f\u043e\u0432\u044b\u0448\u0435\u043d\u0438\u044f \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_1dab
    const-string v1, "Variable Rate Shading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1db6

    const-string v0, "\u041f\u0435\u0440\u0435\u043c\u0435\u043d\u043d\u0430\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u0437\u0430\u0442\u0435\u043d\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_1db6
    const-string v1, "Automatically disable pulse bass haptics if enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc1

    const-string v0, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438 \u043e\u0442\u043a\u043b\u044e\u0447\u0430\u0442\u044c \u0432\u0438\u0431\u0440\u0430\u0446\u0438\u044e \u0432 \u0442\u0430\u043a\u0442 \u0431\u0430\u0441\u0430\u043c"

    return-object v0

    :cond_1dc1
    const-string v1, "Disable pulse bass haptics"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dca

    return-object v3

    :cond_1dca
    const-string v1, "Quick Toggles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dd5

    const-string v0, "\u0411\u044b\u0441\u0442\u0440\u044b\u0435 \u043f\u0435\u0440\u0435\u043a\u043b\u044e\u0447\u0430\u0442\u0435\u043b\u0438"

    return-object v0

    :cond_1dd5
    const-string v1, "Sidebar Appearance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dde

    return-object v5

    :cond_1dde
    const-string v1, "Edit sidebar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1de9

    const-string v0, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c \u0431\u043e\u043a\u043e\u0432\u0443\u044e \u043f\u0430\u043d\u0435\u043b\u044c"

    return-object v0

    :cond_1de9
    const-string v1, "Tap + to add apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1df4

    const-string v0, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 +, \u0447\u0442\u043e\u0431\u044b \u0434\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_1df4
    const-string v1, "Search apps\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dff

    const-string v0, "\u041f\u043e\u0438\u0441\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439\u2026"

    return-object v0

    :cond_1dff
    const-string v1, "Customize handle, edge, label & layout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e0a

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0438\u0442\u044c \u043f\u043e\u043b\u043e\u0441\u043a\u0443, \u043a\u0440\u0430\u044f, \u043f\u043e\u0434\u043f\u0438\u0441\u0438 \u0438 \u0440\u0430\u0441\u043f\u043e\u043b\u043e\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_1e0a
    const-string v1, "Preset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e15

    const-string v0, "\u041d\u0430\u0431\u043e\u0440"

    return-object v0

    :cond_1e15
    const-string v1, "Fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e20

    const-string v0, "\u0417\u0430\u043b\u0438\u0432\u043a\u0430"

    return-object v0

    :cond_1e20
    const-string v1, "480 Hz super-resolution reporting (game mode is 240 Hz)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e2b

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u043d\u044b\u0439 \u043e\u043f\u0440\u043e\u0441 480 \u0413\u0446 (\u0432 \u0438\u0433\u0440\u043e\u0432\u043e\u043c \u0440\u0435\u0436\u0438\u043c\u0435 \u2014 240 \u0413\u0446)"

    return-object v0

    :cond_1e2b
    const-string v1, "Touch Boost"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e36

    const-string v0, "\u0423\u0441\u043a\u043e\u0440\u0435\u043d\u0438\u0435 \u043e\u0442\u043a\u043b\u0438\u043a\u0430"

    return-object v0

    :cond_1e36
    const-string v1, "Rec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e41

    const-string v0, "\u0417\u0430\u043f\u0438\u0441\u044c"

    return-object v0

    :cond_1e41
    const-string v1, "Game Vibration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4c

    const-string v0, "\u0412\u0438\u0431\u0440\u0430\u0446\u0438\u044f \u0432 \u0438\u0433\u0440\u0435"

    return-object v0

    :cond_1e4c
    const-string v1, "Hot Area"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e57

    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430\u044f \u043e\u0431\u043b\u0430\u0441\u0442\u044c"

    return-object v0

    :cond_1e57
    const-string v1, "Lock Gesture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e62

    const-string v0, "\u0411\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u043a\u0430 \u0436\u0435\u0441\u0442\u043e\u0432"

    return-object v0

    :cond_1e62
    const-string v1, "Map Controls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e6d

    const-string v0, "\u041d\u0430\u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_1e6d
    const-string v1, "Super Touch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e78

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u043d\u0430\u044f \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_1e78
    const-string v1, "Tool Grid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e83

    const-string v0, "\u041f\u0430\u043d\u0435\u043b\u044c \u0438\u043d\u0441\u0442\u0440\u0443\u043c\u0435\u043d\u0442\u043e\u0432"

    return-object v0

    :cond_1e83
    const-string v1, "Game mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e8e

    const-string v0, "\u0418\u0433\u0440\u043e\u0432\u043e\u0439 \u0440\u0435\u0436\u0438\u043c"

    return-object v0

    :cond_1e8e
    const-string v1, "Super report"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e99

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u043d\u044b\u0439 \u043e\u043f\u0440\u043e\u0441"

    return-object v0

    :cond_1e99
    const-string v1, "Test real-time touch sampling rate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ea4

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u0447\u0430\u0441\u0442\u043e\u0442\u0443 \u043e\u043f\u0440\u043e\u0441\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430 \u0432 \u0440\u0435\u0430\u043b\u044c\u043d\u043e\u043c \u0432\u0440\u0435\u043c\u0435\u043d\u0438"

    return-object v0

    :cond_1ea4
    const-string v1, "Touch sample rate test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1eaf

    const-string v0, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0447\u0430\u0441\u0442\u043e\u0442\u044b \u043e\u043f\u0440\u043e\u0441\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430"

    return-object v0

    :cond_1eaf
    const-string v1, "Touch tuning (game mode)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1eba

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430 (\u0438\u0433\u0440\u043e\u0432\u043e\u0439 \u0440\u0435\u0436\u0438\u043c)"

    return-object v0

    :cond_1eba
    const-string v1, "Aim sensitivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ec5

    const-string v0, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c \u043f\u0440\u0438\u0446\u0435\u043b\u0438\u0432\u0430\u043d\u0438\u044f"

    return-object v0

    :cond_1ec5
    const-string v1, "Edge filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ed0

    const-string v0, "\u0424\u0438\u043b\u044c\u0442\u0440 \u043a\u0430\u0441\u0430\u043d\u0438\u0439 \u043f\u043e \u043a\u0440\u0430\u044f\u043c"

    return-object v0

    :cond_1ed0
    const-string v1, "Jitter tolerance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1edb

    const-string v0, "\u0414\u043e\u043f\u0443\u0441\u0442\u0438\u043c\u043e\u0435 \u0434\u0440\u043e\u0436\u0430\u043d\u0438\u0435"

    return-object v0

    :cond_1edb
    const-string v1, "Tap stability"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ee6

    const-string v0, "\u0421\u0442\u0430\u0431\u0438\u043b\u044c\u043d\u043e\u0441\u0442\u044c \u043a\u0430\u0441\u0430\u043d\u0438\u044f"

    return-object v0

    :cond_1ee6
    const-string v1, "Touch-up threshold"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ef1

    const-string v0, "\u041f\u043e\u0440\u043e\u0433 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0438\u044f"

    return-object v0

    :cond_1ef1
    const-string v1, "HUD ghost protection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1efc

    const-string v0, "\u0417\u0430\u0449\u0438\u0442\u0430 \u0438\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441\u0430 \u043e\u0442 \u0448\u043b\u0435\u0439\u0444\u043e\u0432"

    return-object v0

    :cond_1efc
    const-string v1, "Detect screen-static UI (minimap, HP bars, buttons) and pin those pixels to the real frame so interpolated frames don\'t smear them."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f07

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u044c \u043d\u0435\u043f\u043e\u0434\u0432\u0438\u0436\u043d\u044b\u0435 \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u044b \u0438\u043d\u0442\u0435\u0440\u0444\u0435\u0439\u0441\u0430 \u0438\u0437 \u043d\u0430\u0441\u0442\u043e\u044f\u0449\u0435\u0433\u043e \u043a\u0430\u0434\u0440\u0430, \u0447\u0442\u043e\u0431\u044b \u0438\u0437\u0431\u0435\u0436\u0430\u0442\u044c \u0448\u043b\u0435\u0439\u0444\u043e\u0432 \u043f\u0440\u0438 \u0438\u043d\u0442\u0435\u0440\u043f\u043e\u043b\u044f\u0446\u0438\u0438."

    return-object v0

    :cond_1f07
    const-string v1, "Generation method"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f12

    const-string v0, "\u041c\u0435\u0442\u043e\u0434 \u0433\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u0438"

    return-object v0

    :cond_1f12
    const-string v1, "Extrapolate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f1d

    const-string v0, "\u042d\u043a\u0441\u0442\u0440\u0430\u043f\u043e\u043b\u044f\u0446\u0438\u044f"

    return-object v0

    :cond_1f1d
    const-string v1, "Motion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f28

    const-string v0, "\u0414\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_1f28
    const-string v1, "Efficient generation (VRS)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f33

    const-string v0, "\u042d\u043a\u043e\u043d\u043e\u043c\u0438\u0447\u043d\u0430\u044f \u0433\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f (VRS)"

    return-object v0

    :cond_1f33
    const-string v1, "Run the frame-generation shader passes at 2x2 variable shading rate. Cuts GPU cost ~4x with no visible quality loss."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f3e

    const-string v0, "\u0412\u044b\u043f\u043e\u043b\u043d\u044f\u0442\u044c \u0433\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044e \u043a\u0430\u0434\u0440\u043e\u0432 \u0441 \u0437\u0430\u0442\u0435\u043d\u0435\u043d\u0438\u0435\u043c 2\u00d72 \u0434\u043b\u044f \u0441\u043d\u0438\u0436\u0435\u043d\u0438\u044f \u043d\u0430\u0433\u0440\u0443\u0437\u043a\u0438 GPU \u043f\u0440\u0438\u043c\u0435\u0440\u043d\u043e \u0432\u0447\u0435\u0442\u0432\u0435\u0440\u043e \u0431\u0435\u0437 \u0437\u0430\u043c\u0435\u0442\u043d\u043e\u0439 \u043f\u043e\u0442\u0435\u0440\u0438 \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u0430."

    return-object v0

    :cond_1f3e
    const-string v1, "AFME frame generation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f49

    const-string v0, "\u0413\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432 AFME"

    return-object v0

    :cond_1f49
    const-string v1, "Frame pacing"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f54

    const-string v0, "\u0420\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e\u0441\u0442\u044c \u043a\u0430\u0434\u0440\u043e\u0432"

    return-object v0

    :cond_1f54
    const-string v1, "Anisotropic filtering"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f5f

    const-string v0, "\u0410\u043d\u0438\u0437\u043e\u0442\u0440\u043e\u043f\u043d\u0430\u044f \u0444\u0438\u043b\u044c\u0442\u0440\u0430\u0446\u0438\u044f"

    return-object v0

    :cond_1f5f
    const-string v1, "Sharpens textures viewed at an angle. Forced by the AFME layer at sampler creation, so it applies to textures the game loads from now on."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f6a

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0430\u0435\u0442 \u0447\u0451\u0442\u043a\u043e\u0441\u0442\u044c \u0442\u0435\u043a\u0441\u0442\u0443\u0440 \u043f\u043e\u0434 \u0443\u0433\u043b\u043e\u043c. \u041f\u0440\u0438\u043c\u0435\u043d\u044f\u0435\u0442\u0441\u044f \u043a \u0442\u0435\u043a\u0441\u0442\u0443\u0440\u0430\u043c, \u0437\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u043d\u044b\u043c \u043f\u043e\u0441\u043b\u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u044f."

    return-object v0

    :cond_1f6a
    const-string v1, "Color enhance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f73

    return-object v4

    :cond_1f73
    const-string v1, "Upscaler"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f7e

    const-string v0, "\u041c\u0430\u0441\u0448\u0442\u0430\u0431\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435"

    return-object v0

    :cond_1f7e
    const-string v1, "Bypasses the display overlay hardware. Applies immediately, but affects the whole screen, not just this game."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f89

    const-string v0, "\u041e\u0431\u0445\u043e\u0434\u0438\u0442 \u0430\u043f\u043f\u0430\u0440\u0430\u0442\u043d\u044b\u0435 \u043d\u0430\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0434\u0438\u0441\u043f\u043b\u0435\u044f. \u041f\u0440\u0438\u043c\u0435\u043d\u044f\u0435\u0442\u0441\u044f \u0441\u0440\u0430\u0437\u0443 \u043a\u043e \u0432\u0441\u0435\u043c\u0443 \u044d\u043a\u0440\u0430\u043d\u0443, \u0430 \u043d\u0435 \u0442\u043e\u043b\u044c\u043a\u043e \u043a \u0438\u0433\u0440\u0435."

    return-object v0

    :cond_1f89
    const-string v1, "Force 4\u00d7 MSAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f94

    const-string v0, "\u041f\u0440\u0438\u043d\u0443\u0434\u0438\u0442\u0435\u043b\u044c\u043d\u043e 4\u00d7 MSAA"

    return-object v0

    :cond_1f94
    const-string v1, "Applies when the game next creates its render context \u2014 restart the game."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f9f

    const-string v0, "\u041f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u0441\u044f \u043f\u0440\u0438 \u0441\u043e\u0437\u0434\u0430\u043d\u0438\u0438 \u043d\u043e\u0432\u043e\u0433\u043e \u0433\u0440\u0430\u0444\u0438\u0447\u0435\u0441\u043a\u043e\u0433\u043e \u043a\u043e\u043d\u0442\u0435\u043a\u0441\u0442\u0430 \u2014 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u0435 \u0438\u0433\u0440\u0443."

    return-object v0

    :cond_1f9f
    const-string v1, "Resolution scale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1faa

    const-string v0, "\u041c\u0430\u0441\u0448\u0442\u0430\u0431 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_1faa
    const-string v1, "Rendering"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fb5

    const-string v0, "\u041e\u0442\u0440\u0438\u0441\u043e\u0432\u043a\u0430"

    return-object v0

    :cond_1fb5
    const-string v1, "No active game \u2014 start a session to edit per-app settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fc0

    const-string v0, "\u041d\u0435\u0442 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0439 \u0438\u0433\u0440\u044b \u2014 \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u0435 \u0441\u0435\u0441\u0441\u0438\u044e \u0434\u043b\u044f \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u0435\u0451 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043a"

    return-object v0

    :cond_1fc0
    const-string v1, "First frame boost"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fcb

    const-string v0, "\u0423\u0441\u043a\u043e\u0440\u0435\u043d\u0438\u0435 \u043f\u0435\u0440\u0432\u043e\u0433\u043e \u043a\u0430\u0434\u0440\u0430"

    return-object v0

    :cond_1fcb
    const-string v1, "Game vibration"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fd6

    const-string v0, "\u0412\u0438\u0431\u0440\u0430\u0446\u0438\u044f \u0432 \u0438\u0433\u0440\u0435"

    return-object v0

    :cond_1fd6
    const-string v1, "Hot area"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fe1

    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430\u044f \u043e\u0431\u043b\u0430\u0441\u0442\u044c"

    return-object v0

    :cond_1fe1
    const-string v1, "High touch sampling rate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fec

    const-string v0, "\u0412\u044b\u0441\u043e\u043a\u0430\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u043e\u043f\u0440\u043e\u0441\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430"

    return-object v0

    :cond_1fec
    const-string v1, "General"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ff7

    const-string v0, "\u041e\u0431\u0449\u0438\u0435"

    return-object v0

    :cond_1ff7
    const-string v1, "Per-game tuning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2002

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u043e\u0439 \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_2002
    const-string v1, "Super touch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_200d

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u043d\u0430\u044f \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_200d
    const-string v1, "Super touch level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2018

    const-string v0, "\u0423\u0440\u043e\u0432\u0435\u043d\u044c \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u044c\u043d\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_2018
    const-string v1, "Drag inside the pad above to measure live touch sampling rate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2023

    const-string v0, "\u041f\u0440\u043e\u0432\u043e\u0434\u0438\u0442\u0435 \u0432 \u043e\u0431\u043b\u0430\u0441\u0442\u0438 \u0432\u044b\u0448\u0435 \u0434\u043b\u044f \u0438\u0437\u043c\u0435\u0440\u0435\u043d\u0438\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u044b \u043e\u043f\u0440\u043e\u0441\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430"

    return-object v0

    :cond_2023
    const-string v1, "Cast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_202e

    const-string v0, "\u0422\u0440\u0430\u043d\u0441\u043b\u044f\u0446\u0438\u044f"

    return-object v0

    :cond_202e
    const-string v1, "Picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2039

    const-string v0, "\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_2039
    const-string v1, "Frame gen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2044

    const-string v0, "\u0413\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u043a\u0430\u0434\u0440\u043e\u0432"

    return-object v0

    :cond_2044
    const-string v1, "Interpolates video in the display hardware. Turns Upscale off \u2014 they cannot run together. Applies from the next playback."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_204f

    const-string v0, "\u0410\u043f\u043f\u0430\u0440\u0430\u0442\u043d\u0430\u044f \u0438\u043d\u0442\u0435\u0440\u043f\u043e\u043b\u044f\u0446\u0438\u044f \u0432\u0438\u0434\u0435\u043e. \u041e\u0442\u043a\u043b\u044e\u0447\u0430\u0435\u0442 \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435, \u043f\u043e\u0441\u043a\u043e\u043b\u044c\u043a\u0443 \u043e\u043d\u0438 \u043d\u0435\u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c\u044b. \u041f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u0441\u044f \u043f\u0440\u0438 \u0441\u043b\u0435\u0434\u0443\u044e\u0449\u0435\u043c \u0432\u043e\u0441\u043f\u0440\u043e\u0438\u0437\u0432\u0435\u0434\u0435\u043d\u0438\u0438."

    return-object v0

    :cond_204f
    const-string v1, "Smoothness"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_205a

    const-string v0, "\u041f\u043b\u0430\u0432\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_205a
    const-string v1, "Target frame rate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2065

    const-string v0, "\u0426\u0435\u043b\u0435\u0432\u0430\u044f \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u043a\u0430\u0434\u0440\u043e\u0432"

    return-object v0

    :cond_2065
    const-string v1, "Detail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2070

    const-string v0, "\u0414\u0435\u0442\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044f"

    return-object v0

    :cond_2070
    const-string v1, "Tone mapping"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_207b

    const-string v0, "\u0422\u043e\u043d\u0430\u043b\u044c\u043d\u043e\u0435 \u043e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_207b
    const-string v1, "Shadow lift"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2086

    const-string v0, "\u041e\u0441\u0432\u0435\u0442\u043b\u0435\u043d\u0438\u0435 \u0442\u0435\u043d\u0435\u0439"

    return-object v0

    :cond_2086
    const-string v1, "No active app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2091

    const-string v0, "\u041d\u0435\u0442 \u0430\u043a\u0442\u0438\u0432\u043d\u043e\u0433\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_2091
    const-string v1, "Screenshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_209c

    const-string v0, "\u0421\u043a\u0440\u0438\u043d\u0448\u043e\u0442"

    return-object v0

    :cond_209c
    const-string v1, "App settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20a7

    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_20a7
    const-string v1, "Style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20b2

    const-string v0, "\u0421\u0442\u0438\u043b\u044c"

    return-object v0

    :cond_20b2
    const-string v1, "Crisp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20bd

    const-string v0, "\u0427\u0451\u0442\u043a\u0438\u0439"

    return-object v0

    :cond_20bd
    const-string v1, "Enhance picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20c8

    const-string v0, "\u0423\u043b\u0443\u0447\u0448\u0430\u0442\u044c \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"

    return-object v0

    :cond_20c8
    const-string v1, "Video toolbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20d3

    const-string v0, "\u0418\u043d\u0441\u0442\u0440\u0443\u043c\u0435\u043d\u0442\u044b \u0432\u0438\u0434\u0435\u043e"

    return-object v0

    :cond_20d3
    const-string v1, "Upscale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20de

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u0438\u0435 \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_20de
    const-string v1, "CPU Frequency(MHz)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20e9

    const-string v0, "\u0427\u0430\u0441\u0442\u043e\u0442\u0430 CPU (\u041c\u0413\u0446)"

    return-object v0

    :cond_20e9
    const-string v1, "GPU Frequency(MHz)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20f4

    const-string v0, "\u0427\u0430\u0441\u0442\u043e\u0442\u0430 GPU (\u041c\u0413\u0446)"

    return-object v0

    :cond_20f4
    const-string v1, "CPU Temperature(C)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20ff

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 CPU (\u00b0C)"

    return-object v0

    :cond_20ff
    const-string v1, "GPU Temperature(C)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_210a

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 GPU (\u00b0C)"

    return-object v0

    :cond_210a
    const-string v1, "CPU Usage(%)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2115

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 CPU (%)"

    return-object v0

    :cond_2115
    const-string v1, "Temperature(C)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2120

    const-string v0, "\u0422\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 (\u00b0C)"

    return-object v0

    :cond_2120
    const-string v1, "Power(W)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_212b

    const-string v0, "\u041c\u043e\u0449\u043d\u043e\u0441\u0442\u044c (\u0412\u0442)"

    return-object v0

    :cond_212b
    const-string v1, "Capacity(%)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2136

    const-string v0, "\u0417\u0430\u0440\u044f\u0434 (%)"

    return-object v0

    :cond_2136
    const-string v1, "Frequency(MHz)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2141

    const-string v0, "\u0427\u0430\u0441\u0442\u043e\u0442\u0430 (\u041c\u0413\u0446)"

    return-object v0

    :cond_2141
    const-string v1, "Frame Time(ms)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_214c

    const-string v0, "\u0412\u0440\u0435\u043c\u044f \u043a\u0430\u0434\u0440\u0430 (\u043c\u0441)"

    return-object v0

    :cond_214c
    const-string v1, "Usage(%)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2157

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 (%)"

    return-object v0

    :cond_2157
    const-string v1, "AVG Power"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2162

    const-string v0, "\u0421\u0440\u0435\u0434\u043d\u044f\u044f \u043c\u043e\u0449\u043d\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_2162
    const-string v1, "AVG: %.1fC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_216d

    const-string v0, "\u0421\u0420\u0415\u0414.: %.1f\u00b0C"

    return-object v0

    :cond_216d
    const-string v1, "AVG: %.2fW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2178

    const-string v0, "\u0421\u0420\u0415\u0414.: %.2f\u0412\u0442"

    return-object v0

    :cond_2178
    const-string v1, "MAX: %.1fC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2183

    const-string v0, "\u041c\u0410\u041a\u0421.: %.1f\u00b0C"

    return-object v0

    :cond_2183
    const-string v1, "MAX: %.2fW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_218e

    const-string v0, "\u041c\u0410\u041a\u0421.: %.2f\u0412\u0442"

    return-object v0

    :cond_218e
    const-string v1, "MIN: %.1fC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2199

    const-string v0, "\u041c\u0418\u041d.: %.1f\u00b0C"

    return-object v0

    :cond_2199
    const-string v1, "MIN: %.2fW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21a4

    const-string v0, "\u041c\u0418\u041d.: %.2f\u0412\u0442"

    return-object v0

    :cond_21a4
    const-string v1, "MAX: %.0fms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21af

    const-string v0, "\u041c\u0410\u041a\u0421.: %.0f\u043c\u0441"

    return-object v0

    :cond_21af
    const-string v1, "AVG %.1fms \u00b7 1%% %.1fms \u00b7 0.1%% %.1fms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21ba

    const-string v0, "\u0421\u0420\u0415\u0414. %.1f\u043c\u0441 \u00b7 1%% %.1f\u043c\u0441 \u00b7 0.1%% %.1f\u043c\u0441"

    return-object v0

    :cond_21ba
    const-string v1, "AVG:%.1f%%  MAX:%.1f%%"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21c5

    const-string v0, "\u0421\u0420\u0415\u0414.:%.1f%%  \u041c\u0410\u041a\u0421.:%.1f%%"

    return-object v0

    :cond_21c5
    const-string v1, "5% Low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21d0

    const-string v0, "\u041d\u0438\u0436\u043d\u0438\u0435 5%"

    return-object v0

    :cond_21d0
    const-string v1, "0.25 \u2014 Subtle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21db

    const-string v0, "0,25 \u2014 \u0435\u0434\u0432\u0430 \u0437\u0430\u043c\u0435\u0442\u043d\u044b\u0439"

    return-object v0

    :cond_21db
    const-string v1, "0.33 \u2014 Light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21e6

    const-string v0, "0,33 \u2014 \u043b\u0451\u0433\u043a\u0438\u0439"

    return-object v0

    :cond_21e6
    const-string v1, "0.5 \u2014 Moderate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21f1

    const-string v0, "0,5 \u2014 \u0443\u043c\u0435\u0440\u0435\u043d\u043d\u044b\u0439"

    return-object v0

    :cond_21f1
    const-string v1, "0.67 \u2014 Strong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21fc

    const-string v0, "0,67 \u2014 \u0441\u0438\u043b\u044c\u043d\u044b\u0439"

    return-object v0

    :cond_21fc
    const-string v1, "0.75 \u2014 Aggressive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2207

    const-string v0, "0,75 \u2014 \u0430\u0433\u0440\u0435\u0441\u0441\u0438\u0432\u043d\u044b\u0439"

    return-object v0

    :cond_2207
    const-string v1, "1.0 \u2014 Maximum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2212

    const-string v0, "1,0 \u2014 \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u044b\u0439"

    return-object v0

    :cond_2212
    const-string v1, "Aggressive (2\u00d72) \u2014 ~50% GPU save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_221d

    const-string v0, "\u0410\u0433\u0440\u0435\u0441\u0441\u0438\u0432\u043d\u044b\u0439 (2\u00d72) \u2014 \u0434\u043e 50% \u044d\u043a\u043e\u043d\u043e\u043c\u0438\u0438 GPU"

    return-object v0

    :cond_221d
    const-string v1, "Conservative (2\u00d71) \u2014 ~25% GPU save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2228

    const-string v0, "\u041c\u044f\u0433\u043a\u0438\u0439 (2\u00d71) \u2014 \u0434\u043e 25% \u044d\u043a\u043e\u043d\u043e\u043c\u0438\u0438 GPU"

    return-object v0

    :cond_2228
    const-string v1, "Ultra (4\u00d74 edges) \u2014 ~60% GPU save"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2233

    const-string v0, "\u0423\u043b\u044c\u0442\u0440\u0430 (\u043a\u0440\u0430\u044f 4\u00d74) \u2014 \u0434\u043e 60% \u044d\u043a\u043e\u043d\u043e\u043c\u0438\u0438 GPU"

    return-object v0

    :cond_2233
    const-string v1, "2\u00d7 MSAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_223e

    const-string v0, "2\u00d7 MSAA"

    return-object v0

    :cond_223e
    const-string v1, "4\u00d7 MSAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2249

    const-string v0, "4\u00d7 MSAA"

    return-object v0

    :cond_2249
    const-string v1, "Cyan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2254

    const-string v0, "\u0413\u043e\u043b\u0443\u0431\u043e\u0439"

    return-object v0

    :cond_2254
    const-string v1, "Emerald"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_225f

    const-string v0, "\u0418\u0437\u0443\u043c\u0440\u0443\u0434\u043d\u044b\u0439"

    return-object v0

    :cond_225f
    const-string v1, "Golden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_226a

    const-string v0, "\u0417\u043e\u043b\u043e\u0442\u043e\u0439"

    return-object v0

    :cond_226a
    const-string v1, "Chamfer (ROG)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2275

    const-string v0, "\u0421\u043a\u043e\u0448\u0435\u043d\u043d\u044b\u0435 \u0443\u0433\u043b\u044b (ROG)"

    return-object v0

    :cond_2275
    const-string v1, "Accent source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2280

    const-string v0, "\u0418\u0441\u0442\u043e\u0447\u043d\u0438\u043a \u0430\u043a\u0446\u0435\u043d\u0442\u0430"

    return-object v0

    :cond_2280
    const-string v1, "Batt target"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_228b

    const-string v0, "\u0426\u0435\u043b\u044c \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_228b
    const-string v1, "BL cap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2296

    const-string v0, "\u041f\u0440\u0435\u0434\u0435\u043b \u044f\u0440\u043a\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_2296
    const-string v1, "CURRENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22a1

    const-string v0, "\u0422\u0415\u041a\u0423\u0429\u0418\u0419"

    return-object v0

    :cond_22a1
    const-string v1, "MASTER SPOOFING TOGGLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22ac

    const-string v0, "\u041e\u0421\u041d\u041e\u0412\u041d\u041e\u0419 \u041f\u0415\u0420\u0415\u041a\u041b\u042e\u0427\u0410\u0422\u0415\u041b\u042c \u041f\u041e\u0414\u041c\u0415\u041d\u042b"

    return-object v0

    :cond_22ac
    const-string v1, "MODEL (e.g. NX809J)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22b7

    const-string v0, "\u041c\u041e\u0414\u0415\u041b\u042c (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, NX809J)"

    return-object v0

    :cond_22b7
    const-string v1, "BRAND (e.g. Nubia)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22c2

    const-string v0, "\u0411\u0420\u0415\u041d\u0414 (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, Nubia)"

    return-object v0

    :cond_22c2
    const-string v1, "DEVICE (e.g. Red Magic 11 Pro)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22cd

    const-string v0, "\u0423\u0421\u0422\u0420\u041e\u0419\u0421\u0422\u0412\u041e (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, Red Magic 11 Pro)"

    return-object v0

    :cond_22cd
    const-string v1, "MANUFACTURER (e.g. ZTE)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22d8

    const-string v0, "\u041f\u0420\u041e\u0418\u0417\u0412\u041e\u0414\u0418\u0422\u0415\u041b\u042c (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440, ZTE)"

    return-object v0

    :cond_22d8
    const-string v1, "DEVICE PROFILE FOR "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22e3

    const-string v0, "\u041f\u0420\u041e\u0424\u0418\u041b\u042c \u0423\u0421\u0422\u0420\u041e\u0419\u0421\u0422\u0412\u0410 \u0414\u041b\u042f "

    return-object v0

    :cond_22e3
    const-string v1, "0 games installed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22ee

    const-string v0, "\u041d\u0435\u0442 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043d\u044b\u0445 \u0438\u0433\u0440"

    return-object v0

    :cond_22ee
    const-string v1, "Source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22f9

    const-string v0, "\u0418\u0441\u0442\u043e\u0447\u043d\u0438\u043a"

    return-object v0

    :cond_22f9
    const-string v1, "About"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2304

    const-string v0, "\u041e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438"

    return-object v0

    :cond_2304
    const-string v1, "Apply"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_230f

    const-string v0, "\u041f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c"

    return-object v0

    :cond_230f
    const-string v1, "Refresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_231a

    const-string v0, "\u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c"

    return-object v0

    :cond_231a
    const-string v1, "Loading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2325

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430"

    return-object v0

    :cond_2325
    const-string v1, "Loading\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2330

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430\u2026"

    return-object v0

    :cond_2330
    const-string v1, "Retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_233b

    const-string v0, "\u041f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u044c"

    return-object v0

    :cond_233b
    const-string v1, "Installed Components"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2346

    const-string v0, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044b\u0435 \u043a\u043e\u043c\u043f\u043e\u043d\u0435\u043d\u0442\u044b"

    return-object v0

    :cond_2346
    const-string v1, "Uninstall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_234f

    return-object v17

    :cond_234f
    const-string v1, "Uninstall theme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_235a

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c \u0442\u0435\u043c\u0443"

    return-object v0

    :cond_235a
    const-string v1, "Apply theme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2365

    const-string v0, "\u041f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c \u0442\u0435\u043c\u0443"

    return-object v0

    :cond_2365
    const-string v1, "Download"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2370

    const-string v0, "\u0421\u043a\u0430\u0447\u0430\u0442\u044c"

    return-object v0

    :cond_2370
    const-string v1, "Downloading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_237b

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430"

    return-object v0

    :cond_237b
    const-string v1, "Downloading\u2026"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2386

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430\u2026"

    return-object v0

    :cond_2386
    const-string v1, "Install"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2391

    const-string v0, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c"

    return-object v0

    :cond_2391
    const-string v1, "Search"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_239c

    const-string v0, "\u041f\u043e\u0438\u0441\u043a"

    return-object v0

    :cond_239c
    const-string v1, "Search themes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23a7

    const-string v0, "\u041f\u043e\u0438\u0441\u043a \u0442\u0435\u043c"

    return-object v0

    :cond_23a7
    const-string v1, "No themes found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23b2

    const-string v0, "\u0422\u0435\u043c\u044b \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u044b"

    return-object v0

    :cond_23b2
    const-string v1, "No results found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23bd

    const-string v0, "\u041d\u0438\u0447\u0435\u0433\u043e \u043d\u0435 \u043d\u0430\u0439\u0434\u0435\u043d\u043e"

    return-object v0

    :cond_23bd
    const-string v1, "No results"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23c8

    const-string v0, "\u041d\u0435\u0442 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u043e\u0432"

    return-object v0

    :cond_23c8
    const-string v1, "Font"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23d3

    const-string v0, "\u0428\u0440\u0438\u0444\u0442"

    return-object v0

    :cond_23d3
    const-string v1, "Fonts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23de

    const-string v0, "\u0428\u0440\u0438\u0444\u0442\u044b"

    return-object v0

    :cond_23de
    const-string v1, "Icon Pack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23e9

    const-string v0, "\u041d\u0430\u0431\u043e\u0440 \u0437\u043d\u0430\u0447\u043a\u043e\u0432"

    return-object v0

    :cond_23e9
    const-string v1, "Charging Animations"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23f4

    const-string v0, "\u0410\u043d\u0438\u043c\u0430\u0446\u0438\u0438 \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    return-object v0

    :cond_23f4
    const-string v1, "Volume Panel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23ff

    const-string v0, "\u041f\u0430\u043d\u0435\u043b\u044c \u0433\u0440\u043e\u043c\u043a\u043e\u0441\u0442\u0438"

    return-object v0

    :cond_23ff
    const-string v1, "Back Gestures"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_240a

    const-string v0, "\u0416\u0435\u0441\u0442\u044b \u00ab\u041d\u0430\u0437\u0430\u0434\u00bb"

    return-object v0

    :cond_240a
    const-string v1, "Battery Styles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2415

    const-string v0, "\u0421\u0442\u0438\u043b\u0438 \u0431\u0430\u0442\u0430\u0440\u0435\u0438"

    return-object v0

    :cond_2415
    const-string v1, "Quick Settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2420

    const-string v0, "\u0411\u044b\u0441\u0442\u0440\u044b\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    return-object v0

    :cond_2420
    const-string v1, "Cellular Signal Icons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2429

    return-object v8

    :cond_2429
    const-string v1, "Icon packs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2434

    const-string v0, "\u041d\u0430\u0431\u043e\u0440\u044b \u0437\u043d\u0430\u0447\u043a\u043e\u0432"

    return-object v0

    :cond_2434
    const-string v1, "Theme Packs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_243f

    const-string v0, "\u041d\u0430\u0431\u043e\u0440\u044b \u0442\u0435\u043c"

    return-object v0

    :cond_243f
    const-string v1, "Pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_244a

    const-string v0, "\u041f\u0430\u0443\u0437\u0430"

    return-object v0

    :cond_244a
    const-string v1, "Resume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2455

    const-string v0, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0438\u0442\u044c"

    return-object v0

    :cond_2455
    const-string v1, "Collapsed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2460

    const-string v0, "\u0421\u0432\u0451\u0440\u043d\u0443\u0442\u043e"

    return-object v0

    :cond_2460
    const-string v1, "Expanded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_246b

    const-string v0, "\u0420\u0430\u0437\u0432\u0451\u0440\u043d\u0443\u0442\u043e"

    return-object v0

    :cond_246b
    const-string v1, "Animation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2476

    const-string v0, "\u0410\u043d\u0438\u043c\u0430\u0446\u0438\u044f"

    return-object v0

    :cond_2476
    const-string v1, ": clear must be below trigger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2481

    const-string v0, ": \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0441\u043d\u044f\u0442\u0438\u044f \u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u0438\u044f \u0434\u043e\u043b\u0436\u043d\u0430 \u0431\u044b\u0442\u044c \u043d\u0438\u0436\u0435 \u043f\u043e\u0440\u043e\u0433\u0430"

    return-object v0

    :cond_2481
    const-string v1, ": clear temp must be below trigger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_248c

    const-string v0, ": \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u0441\u043d\u044f\u0442\u0438\u044f \u0434\u043e\u043b\u0436\u043d\u0430 \u0431\u044b\u0442\u044c \u043d\u0438\u0436\u0435 \u043f\u043e\u0440\u043e\u0433\u0430"

    return-object v0

    :cond_248c
    const-string v1, ": max current must be > 0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2497

    const-string v0, ": \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u044b\u0439 \u0442\u043e\u043a \u0434\u043e\u043b\u0436\u0435\u043d \u0431\u044b\u0442\u044c \u0431\u043e\u043b\u044c\u0448\u0435 \u043d\u0443\u043b\u044f"

    return-object v0

    :cond_2497
    const-string v1, ": min current exceeds max"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24a2

    const-string v0, ": \u043c\u0438\u043d\u0438\u043c\u0430\u043b\u044c\u043d\u044b\u0439 \u0442\u043e\u043a \u043f\u0440\u0435\u0432\u044b\u0448\u0430\u0435\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u044b\u0439"

    return-object v0

    :cond_24a2
    const-string v1, ": pick a frequency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24ad

    const-string v0, ": \u0432\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0447\u0430\u0441\u0442\u043e\u0442\u0443"

    return-object v0

    :cond_24ad
    const-string v1, ": trigger must be > 0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24b8

    const-string v0, ": \u043f\u043e\u0440\u043e\u0433 \u0434\u043e\u043b\u0436\u0435\u043d \u0431\u044b\u0442\u044c \u0431\u043e\u043b\u044c\u0448\u0435 \u043d\u0443\u043b\u044f"

    return-object v0

    :cond_24b8
    const-string v1, ": trigger must increase from previous level"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24c3

    const-string v0, ": \u043f\u043e\u0440\u043e\u0433 \u0434\u043e\u043b\u0436\u0435\u043d \u0431\u044b\u0442\u044c \u0432\u044b\u0448\u0435 \u043f\u0440\u0435\u0434\u044b\u0434\u0443\u0449\u0435\u0433\u043e \u0443\u0440\u043e\u0432\u043d\u044f"

    return-object v0

    :cond_24c3
    const-string v1, ": trigger must increase from previous tier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24ce

    const-string v0, ": \u043f\u043e\u0440\u043e\u0433 \u0434\u043e\u043b\u0436\u0435\u043d \u0431\u044b\u0442\u044c \u0432\u044b\u0448\u0435 \u043f\u0440\u0435\u0434\u044b\u0434\u0443\u0449\u0435\u0439 \u0441\u0442\u0443\u043f\u0435\u043d\u0438"

    return-object v0

    :cond_24ce
    const-string v1, "Profile too large: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24d9

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0431\u043e\u043b\u044c\u0448\u043e\u0439: "

    return-object v0

    :cond_24d9
    const-string v1, "No profiles match \u201c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24e4

    const-string v0, "\u041d\u0435\u0442 \u043f\u0440\u043e\u0444\u0438\u043b\u0435\u0439 \u043f\u043e \u0437\u0430\u043f\u0440\u043e\u0441\u0443 \u00ab"

    return-object v0

    :cond_24e4
    const-string v1, "Profile saved: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24ef

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d: "

    return-object v0

    :cond_24ef
    const-string v1, "Profile deleted: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24fa

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u0443\u0434\u0430\u043b\u0451\u043d: "

    return-object v0

    :cond_24fa
    const-string v1, "Profile: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2505

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c: "

    return-object v0

    :cond_2505
    const-string v1, "Curves imported from \""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2510

    const-string v0, "\u041a\u0440\u0438\u0432\u044b\u0435 \u0438\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u043d\u044b \u0438\u0437 \u00ab"

    return-object v0

    :cond_2510
    const-string v1, "Imported from \""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_251b

    const-string v0, "\u0418\u043c\u043f\u043e\u0440\u0442\u0438\u0440\u043e\u0432\u0430\u043d\u043e \u0438\u0437 \u00ab"

    return-object v0

    :cond_251b
    const-string v1, "Seeded from: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2526

    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u0430: "

    return-object v0

    :cond_2526
    const-string v1, "Custom profile #"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2531

    const-string v0, "\u0421\u0432\u043e\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u2116"

    return-object v0

    :cond_2531
    const-string v1, "Custom profile \'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_253c

    const-string v0, "\u0421\u0432\u043e\u0439 \u043f\u0440\u043e\u0444\u0438\u043b\u044c \u00ab"

    return-object v0

    :cond_253c
    const-string v1, "Profile \'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2547

    const-string v0, "\u041f\u0440\u043e\u0444\u0438\u043b\u044c \u00ab"

    return-object v0

    :cond_2547
    const-string v1, "Tier "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2552

    const-string v0, "\u0421\u0442\u0443\u043f\u0435\u043d\u044c "

    return-object v0

    :cond_2552
    const-string v1, "Tiers ("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_255d

    const-string v0, "\u0421\u0442\u0443\u043f\u0435\u043d\u0438 ("

    return-object v0

    :cond_255d
    const-string v1, "Remove "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2568

    const-string v0, "\u0423\u0434\u0430\u043b\u0438\u0442\u044c "

    return-object v0

    :cond_2568
    const-string v1, "Clear pins and unhide "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2573

    const-string v0, "\u0421\u043d\u044f\u0442\u044c \u0437\u0430\u043a\u0440\u0435\u043f\u043b\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u043a\u0430\u0437\u0430\u0442\u044c "

    return-object v0

    :cond_2573
    const-string v1, " hidden app(s)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_257e

    const-string v0, " \u0441\u043a\u0440\u044b\u0442\u044b\u0445 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_257e
    const-string v1, " tiers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2589

    const-string v0, " \u0441\u0442\u0443\u043f\u0435\u043d\u0435\u0439"

    return-object v0

    :cond_2589
    const-string v1, " tiers \u00b7 up to "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2594

    const-string v0, " \u0441\u0442\u0443\u043f\u0435\u043d\u0435\u0439 \u00b7 \u0434\u043e "

    return-object v0

    :cond_2594
    const-string v1, " minutes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_259f

    const-string v0, " \u043c\u0438\u043d\u0443\u0442"

    return-object v0

    :cond_259f
    const-string v1, " per-app profiles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25aa

    const-string v0, " \u043f\u0440\u043e\u0444\u0438\u043b\u0435\u0439 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_25aa
    const-string v1, "Failed to launch in freeform"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25b5

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043f\u043b\u0430\u0432\u0430\u044e\u0449\u0435\u0435 \u043e\u043a\u043d\u043e"

    return-object v0

    :cond_25b5
    const-string v1, "Failed to start SystemUI screen recording"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25c0

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c \u0437\u0430\u043f\u0438\u0441\u044c \u044d\u043a\u0440\u0430\u043d\u0430"

    return-object v0

    :cond_25c0
    const-string v1, "Failed to stop screen recording"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25cb

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0437\u0430\u043f\u0438\u0441\u044c \u044d\u043a\u0440\u0430\u043d\u0430"

    return-object v0

    :cond_25cb
    const-string v1, "Failed to load session "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25d6

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0441\u0435\u0441\u0441\u0438\u044e "

    return-object v0

    :cond_25d6
    const-string v1, "A / B compare"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25e1

    const-string v0, "\u0421\u0440\u0430\u0432\u043d\u0435\u043d\u0438\u0435 A / B"

    return-object v0

    :cond_25e1
    const-string v1, "A / B RESULTS  (per config, persisted)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25ec

    const-string v0, "\u0420\u0415\u0417\u0423\u041b\u042c\u0422\u0410\u0422\u042b A / B (\u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u044b \u0434\u043b\u044f \u043a\u0430\u0436\u0434\u043e\u0433\u043e \u043d\u0430\u0431\u043e\u0440\u0430)"

    return-object v0

    :cond_25ec
    const-string v1, "in\u2192cb = hardware timestamp to app callback \u00b7 in\u2192disp = +1 vsync estimate \u00b7 react = your reaction. Lower is better."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f7

    const-string v0, "in\u2192cb \u2014 \u043e\u0442 \u0441\u0435\u043d\u0441\u043e\u0440\u0430 \u0434\u043e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f; in\u2192disp \u2014 \u043e\u0446\u0435\u043d\u043a\u0430 \u0434\u043e \u043e\u0442\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u0441 \u0443\u0447\u0451\u0442\u043e\u043c vsync; react \u2014 \u0432\u0430\u0448\u0430 \u0440\u0435\u0430\u043a\u0446\u0438\u044f. \u041c\u0435\u043d\u044c\u0448\u0435 \u2014 \u043b\u0443\u0447\u0448\u0435."

    return-object v0

    :cond_25f7
    const-string v1, " Requested a boost but the panel is still at its base rate."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2602

    const-string v0, " \u0423\u0441\u043a\u043e\u0440\u0435\u043d\u0438\u0435 \u0437\u0430\u043f\u0440\u043e\u0448\u0435\u043d\u043e, \u043d\u043e \u0447\u0430\u0441\u0442\u043e\u0442\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430 \u043e\u0441\u0442\u0430\u043b\u0430\u0441\u044c \u0431\u0430\u0437\u043e\u0432\u043e\u0439."

    return-object v0

    :cond_2602
    const-string v1, " Hz, read back from the driver."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_260d

    const-string v0, " \u0413\u0446, \u0441\u0447\u0438\u0442\u0430\u043d\u043e \u0438\u0437 \u0434\u0440\u0430\u0439\u0432\u0435\u0440\u0430."

    return-object v0

    :cond_260d
    const-string v1, " samples (lower = smoother)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2618

    const-string v0, " \u0437\u0430\u043c\u0435\u0440\u043e\u0432 (\u043c\u0435\u043d\u044c\u0448\u0435 \u2014 \u043f\u043b\u0430\u0432\u043d\u0435\u0435)"

    return-object v0

    :cond_2618
    const-string v1, "Super report "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2623

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u043d\u044b\u0439 \u043e\u043f\u0440\u043e\u0441 "

    return-object v0

    :cond_2623
    const-string v1, "Super report ("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_262e

    const-string v0, "\u041f\u043e\u0432\u044b\u0448\u0435\u043d\u043d\u044b\u0439 \u043e\u043f\u0440\u043e\u0441 ("

    return-object v0

    :cond_262e
    const-string v1, "Graph"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2639

    const-string v0, "\u0413\u0440\u0430\u0444\u0438\u043a"

    return-object v0

    :cond_2639
    const-string v1, "Reset all thermal profiles?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2644

    const-string v0, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u0432\u0441\u0435 \u0442\u0435\u0440\u043c\u043e\u043f\u0440\u043e\u0444\u0438\u043b\u0438?"

    return-object v0

    :cond_2644
    const-string v1, "All charging profiles will be removed."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_264f

    const-string v0, "\u0412\u0441\u0435 \u043f\u0440\u043e\u0444\u0438\u043b\u0438 \u0437\u0430\u0440\u044f\u0434\u043a\u0438 \u0431\u0443\u0434\u0443\u0442 \u0443\u0434\u0430\u043b\u0435\u043d\u044b."

    return-object v0

    :cond_264f
    const-string v1, "HDR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_265a

    const-string v0, "HDR"

    return-object v0

    :cond_265a
    const-string v1, "Protan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2665

    const-string v0, "\u041f\u0440\u043e\u0442\u0430\u043d\u043e\u043f\u0438\u044f"

    return-object v0

    :cond_2665
    const-string v1, "Deutan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2670

    const-string v0, "\u0414\u0435\u0439\u0442\u0435\u0440\u0430\u043d\u043e\u043f\u0438\u044f"

    return-object v0

    :cond_2670
    const-string v1, "Tritan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_267b

    const-string v0, "\u0422\u0440\u0438\u0442\u0430\u043d\u043e\u043f\u0438\u044f"

    return-object v0

    :cond_267b
    const-string v1, "Tex: Balanced"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2686

    const-string v0, "\u0422\u0435\u043a\u0441\u0442\u0443\u0440\u044b: \u0431\u0430\u043b\u0430\u043d\u0441"

    return-object v0

    :cond_2686
    const-string v1, "Tex: Quality"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2691

    const-string v0, "\u0422\u0435\u043a\u0441\u0442\u0443\u0440\u044b: \u043a\u0430\u0447\u0435\u0441\u0442\u0432\u043e"

    return-object v0

    :cond_2691
    const-string v1, "Tex: Speed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_269c

    const-string v0, "\u0422\u0435\u043a\u0441\u0442\u0443\u0440\u044b: \u0441\u043a\u043e\u0440\u043e\u0441\u0442\u044c"

    return-object v0

    :cond_269c
    const-string v1, "Charging curve"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26a7

    const-string v0, "\u041a\u0440\u0438\u0432\u0430\u044f \u0437\u0430\u0440\u044f\u0434\u043a\u0438"

    return-object v0

    :cond_26a7
    const-string v1, "Download hero banner when a game is added"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26b2

    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u0442\u044c \u043e\u0431\u043b\u043e\u0436\u043a\u0443 \u043f\u0440\u0438 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0438 \u0438\u0433\u0440\u044b"

    return-object v0

    :cond_26b2
    const-string v1, "FPS Stats saved ("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26bd

    const-string v0, "\u0421\u0442\u0430\u0442\u0438\u0441\u0442\u0438\u043a\u0430 FPS \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430 ("

    return-object v0

    :cond_26bd
    const-string v1, "GameSpace Art (coming soon)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26c8

    const-string v0, "\u041e\u0431\u043b\u043e\u0436\u043a\u0438 GameSpace (\u0441\u043a\u043e\u0440\u043e)"

    return-object v0

    :cond_26c8
    const-string v1, "Generated : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26d3

    const-string v0, "\u0421\u0433\u0435\u043d\u0435\u0440\u0438\u0440\u043e\u0432\u0430\u043d\u043e: "

    return-object v0

    :cond_26d3
    const-string v1, "No Dolby per-game profile for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26de

    const-string v0, "\u041d\u0435\u0442 \u043e\u0442\u0434\u0435\u043b\u044c\u043d\u043e\u0433\u043e \u043f\u0440\u043e\u0444\u0438\u043b\u044f Dolby \u0434\u043b\u044f "

    return-object v0

    :cond_26de
    const-string v1, "Panel scan rate: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26e9

    const-string v0, "\u0427\u0430\u0441\u0442\u043e\u0442\u0430 \u043e\u043f\u0440\u043e\u0441\u0430 \u0441\u0435\u043d\u0441\u043e\u0440\u0430: "

    return-object v0

    :cond_26e9
    const-string v1, "FT \u00b7 target %.1f ms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26f4

    const-string v0, "\u0412\u0440\u0435\u043c\u044f \u043a\u0430\u0434\u0440\u0430 \u00b7 \u0446\u0435\u043b\u044c %.1f \u043c\u0441"

    return-object v0

    :cond_26f4
    const-string v1, "full window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26ff

    const-string v0, "\u0432\u0441\u0451 \u043e\u043a\u043d\u043e"

    return-object v0

    :cond_26ff
    const-string v1, "[MISSING] "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_270a

    const-string v0, "[\u041d\u0415\u0422] "

    return-object v0

    :cond_270a
    const-string v1, "\u00b7post filters run after frame generation \u2014 grain fed to the motion estimator would read as motion, and a vignette applied earlier smears with the camera."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2715

    const-string v0, "\u0424\u0438\u043b\u044c\u0442\u0440\u044b \u00b7post \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u044e\u0442\u0441\u044f \u043f\u043e\u0441\u043b\u0435 \u0433\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u0438 \u043a\u0430\u0434\u0440\u043e\u0432: \u0438\u043d\u0430\u0447\u0435 \u0437\u0435\u0440\u043d\u043e \u0432\u043e\u0441\u043f\u0440\u0438\u043d\u0438\u043c\u0430\u0435\u0442\u0441\u044f \u043a\u0430\u043a \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435, \u0430 \u0432\u0438\u043d\u044c\u0435\u0442\u043a\u0430 \u0440\u0430\u0437\u043c\u0430\u0437\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u043f\u0440\u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0438 \u043a\u0430\u043c\u0435\u0440\u044b."

    return-object v0

    :cond_2715
    const-string v1, "SILVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2720

    const-string v0, "\u042d\u041d\u0415\u0420\u0413\u041e\u042d\u0424\u0424\u0415\u041a\u0422\u0418\u0412\u041d\u042b\u0415 \u042f\u0414\u0420\u0410"

    return-object v0

    :cond_2720
    const-string v1, "GOLD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_272b

    const-string v0, "\u041f\u0420\u041e\u0418\u0417\u0412\u041e\u0414\u0418\u0422\u0415\u041b\u042c\u041d\u042b\u0415 \u042f\u0414\u0420\u0410"

    return-object v0

    :cond_272b
    const-string v1, "PRIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2736

    const-string v0, "\u041e\u0421\u041d\u041e\u0412\u041d\u041e\u0415 \u042f\u0414\u0420\u041e"

    return-object v0

    :cond_2736
    const-string v1, " saved"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2741

    const-string v0, " \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e"

    return-object v0

    :cond_2741
    const-string v1, " C target"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_274c

    const-string v0, " \u00b0C \u2014 \u0446\u0435\u043b\u044c"

    return-object v0

    :cond_274c
    const-string v1, "MHz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2757

    const-string v0, "\u041c\u0413\u0446"

    return-object v0

    :cond_2757
    const-string v1, "GHz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2762

    const-string v0, "\u0413\u0413\u0446"

    return-object v0

    :cond_2762
    const-string v1, "OS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_276d

    const-string v0, "\u041e\u0421"

    return-object v0

    :cond_276d
    const-string v1, "Apply preset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2778

    const-string v0, "\u041f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c \u043d\u0430\u0431\u043e\u0440"

    return-object v0

    :cond_2778
    const-string v1, "Edit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2783

    const-string v0, "\u0418\u0437\u043c\u0435\u043d\u0438\u0442\u044c"

    return-object v0

    :cond_2783
    const-string v1, "Reset all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_278e

    const-string v0, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u0432\u0441\u0451"

    return-object v0

    :cond_278e
    const-string v1, "Save changes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2799

    const-string v0, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f"

    return-object v0

    :cond_2799
    const-string v1, "Remove profile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27a2

    return-object v18

    :cond_27a2
    const-string v1, "No data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27ad

    const-string v0, "\u041d\u0435\u0442 \u0434\u0430\u043d\u043d\u044b\u0445"

    return-object v0

    :cond_27ad
    const-string v1, "Filter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27b8

    const-string v0, "\u0424\u0438\u043b\u044c\u0442\u0440"

    return-object v0

    :cond_27b8
    const-string v1, "Filters"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27c3

    const-string v0, "\u0424\u0438\u043b\u044c\u0442\u0440\u044b"

    return-object v0

    :cond_27c3
    const-string v1, "Select"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27ce

    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c"

    return-object v0

    :cond_27ce
    const-string v1, "Selected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27d9

    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u043d\u043e"

    return-object v0

    :cond_27d9
    const-string v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27e4

    const-string v0, "\u0412\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    return-object v0

    :cond_27e4
    const-string v1, "Disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27ef

    const-string v0, "\u0412\u044b\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    return-object v0

    :cond_27ef
    const-string v1, "Search games"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27fa

    const-string v0, "\u041f\u043e\u0438\u0441\u043a \u0438\u0433\u0440"

    return-object v0

    :cond_27fa
    const-string v1, "Search apps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2805

    const-string v0, "\u041f\u043e\u0438\u0441\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0439"

    return-object v0

    :cond_2805
    const-string v1, "THERMAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2810

    const-string v0, "\u0422\u0415\u041c\u041f\u0415\u0420\u0410\u0422\u0423\u0420\u0410"

    return-object v0

    :cond_2810
    const-string v1, "DISPLAY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_281b

    const-string v0, "\u042d\u041a\u0420\u0410\u041d"

    return-object v0

    :cond_281b
    const-string v1, "CHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2826

    const-string v0, "\u0417\u0410\u0420\u042f\u0414\u041a\u0410"

    return-object v0

    :cond_2826
    const-string v1, "PACING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2831

    const-string v0, "\u0420\u0410\u0412\u041d\u041e\u041c\u0415\u0420\u041d\u041e\u0421\u0422\u042c \u041a\u0410\u0414\u0420\u041e\u0412"

    return-object v0

    :cond_2831
    const-string v1, "UPSCALING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_283c

    const-string v0, "\u041f\u041e\u0412\u042b\u0428\u0415\u041d\u0418\u0415 \u0420\u0410\u0417\u0420\u0415\u0428\u0415\u041d\u0418\u042f"

    return-object v0

    :cond_283c
    const-string v1, "RENDERING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2847

    const-string v0, "\u041e\u0422\u0420\u0418\u0421\u041e\u0412\u041a\u0410"

    return-object v0

    :cond_2847
    const-string v1, "REPORTING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2852

    const-string v0, "\u041e\u041f\u0420\u041e\u0421 \u0421\u0415\u041d\u0421\u041e\u0420\u0410"

    return-object v0

    :cond_2852
    const-string v1, "MODEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_285d

    const-string v0, "\u041c\u041e\u0414\u0415\u041b\u042c"

    return-object v0

    :cond_285d
    const-string v1, "MANUFACTURER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2868

    const-string v0, "\u041f\u0420\u041e\u0418\u0417\u0412\u041e\u0414\u0418\u0422\u0415\u041b\u042c"

    return-object v0

    :cond_2868
    const-string v1, "BRAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2873

    const-string v0, "\u0411\u0420\u0415\u041d\u0414"

    return-object v0

    :cond_2873
    const-string v1, "CLASSICAL MONITOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_287e

    const-string v0, "\u041a\u041b\u0410\u0421\u0421\u0418\u0427\u0415\u0421\u041a\u0418\u0419 \u041c\u041e\u041d\u0418\u0422\u041e\u0420"

    return-object v0

    :cond_287e
    const-string v1, "TEMP(C)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2888

    const-string v0, "\u0422\u0415\u041c\u041f\u0415\u0420\u0410\u0422\u0423\u0420\u0410 (\u00b0C)"

    :cond_2888
    return-object v0
.end method
