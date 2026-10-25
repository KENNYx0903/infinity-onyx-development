# Touch sounds

Global `lunatik_touch_sound` selects 0 Infinity/original, 1 Xiaomi, 2 AOSP. TouchSoundConfig changes only the Effect_Tick path during ordinary SoundPool loading. The preference unloads/reloads sound effects immediately and plays a bounded preview only when system touch sounds are enabled. There is no polling service.

Provide your own `Effect_Tick_Xiaomi.ogg` and `Effect_Tick_AOSP.ogg` product assets. Infinity uses the original ROM sound. Obtain Xiaomi assets separately; the AOSP reference link is in NOTICE.md. New preference helper name is LunatikTouchSoundPreference to avoid collision with the platform TouchSoundPreference.
