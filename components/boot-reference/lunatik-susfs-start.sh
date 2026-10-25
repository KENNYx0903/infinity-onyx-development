#!/system/bin/sh
# Integrated SUSFS loader, immediate readiness check. lunatik_kenny.
BIN=/system_ext/etc/lunatik/susfs
STATE=/data/misc/lunatik_susfs
MODE=${1:-verify}
[ "$(id -u)" = 0 ] || exit 1
[ ! -L "$STATE" ] || exit 1
mkdir -p "$STATE" || exit 1
chmod 0700 "$STATE"
exec >> "$STATE/startup.log" 2>&1
echo "START $(date) mode=$MODE uptime=$(cut -d' ' -f1 /proc/uptime)"
[ ! -f "$STATE/disable" ] || { echo 'Disabled by local flag'; exit 0; }
BOOT=$(cat /proc/sys/kernel/random/boot_id)
mkdir "$STATE/lock" 2>/dev/null || { echo 'Startup already running or interrupted'; exit 0; }
OLD=$(cat /proc/sys/kernel/kptr_restrict)
cleanup() { echo "$OLD" > /proc/sys/kernel/kptr_restrict; rmdir "$STATE/lock" 2>/dev/null; }
trap cleanup EXIT
trap 'exit 130' HUP INT TERM
if [ ! -d /sys/module/susfs_guard_lkm ]; then
    [ "$MODE" = verify ] || [ "$MODE" = --early ] || exit 1
    [ "$(getprop ro.product.device)" = onyx ] || { echo 'Unexpected device'; exit 1; }
    [ "$(uname -r)" = '6.6.82-4k-ge4d30c77ca39-dirty' ] || { echo 'Kernel release changed; skipped'; exit 0; }
    [ "$(sha256sum /sys/kernel/kheaders.tar.xz | awk '{print $1}')" = '6d6e7953dbadf6dcbcf3ffd775749686957c9c190b1ad7e849e2bff41c8c2d41' ] || { echo 'Kernel headers changed; skipped'; exit 0; }
    [ "$(sha256sum "$BIN/susfs_guard_lkm.ko" | awk '{print $1}')" = 'c61a1bd25f004e8d0452387a781a21d7dcfcf1e1832d4f6f40a333875e0d0b4c' ] || { echo 'SUSFS integrity mismatch'; exit 1; }
    [ "$(sha256sum "$BIN/loader" | awk '{print $1}')" = 'f77e4dc0d0cab68df1587735d205313a22957b8907971b4ea86d03da2967b97a' ] || { echo 'Loader integrity mismatch'; exit 1; }
    [ "$(getenforce)" = Enforcing ] || { echo 'Expected Enforcing'; exit 1; }
    echo 0 > /proc/sys/kernel/kptr_restrict
    "$BIN/loader" "$BIN/susfs_guard_lkm.ko" layers=65535 expose_proc=0 enable_log=0
    RC=$?
    echo "$OLD" > /proc/sys/kernel/kptr_restrict
    if [ "$RC" != 0 ]; then
        echo "Load refused: $RC; no retry this boot"
        exit "$RC"
    fi
    echo "LOADED uptime=$(cut -d' ' -f1 /proc/uptime)"
fi
[ -d /sys/module/susfs_guard_lkm ] || { echo 'SUSFS module not present after loader'; exit 1; }
[ "$(getenforce)" = Enforcing ] || { echo 'Expected Enforcing after load'; exit 1; }
echo "$BOOT" > "$STATE/ready-boot"
rm -f "$STATE/load-in-progress" "$STATE/initial-taint"
echo 'READY: SUSFS loaded; no deferred verification'
