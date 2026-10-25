#!/system/bin/sh
# Author: lunatik_kenny. Built-in service, UID 1000, enforcing dedicated domain.
NODE=/sys/class/touch/touch_dev/fod_longpress_gesture_enabled
# init arms the node before suspend; retain the watcher even if fingerprint setup later resets it.
[ -r "$NODE" ] && [ -w "$NODE" ] || exit 0
while [ "$(getprop sys.user.0.ce_available)" != true ]; do sleep 3; done
while [ "$(am get-started-user-state 0 2>/dev/null)" != RUNNING_UNLOCKED ]; do sleep 3; done
is_awake_unlocked() {
    dumpsys power 2>/dev/null | grep -q 'mWakefulness=Awake' || return 1
    dumpsys window policy 2>/dev/null | grep -q '^[[:space:]]*showing=false$'
}
while ! is_awake_unlocked; do sleep 1; done
while :; do
    POWER=$(dumpsys power 2>/dev/null)
    if printf '%s\n' "$POWER" | grep -qE 'mWakefulness=(Asleep|Dozing)'; then break; fi
    if printf '%s\n' "$POWER" | grep -q 'mWakefulness=Awake' && [ "$(cat "$NODE" 2>/dev/null)" = 0 ]; then
        echo 1 > "$NODE" || exit 0
    fi
    sleep 1
done
while :; do
    if is_awake_unlocked; then sleep 1; is_awake_unlocked && break; fi
    sleep 1
done
[ "$(cat "$NODE" 2>/dev/null)" != 1 ] || echo 0 > "$NODE"
