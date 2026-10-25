#!/system/bin/sh
# Experimental AOD, lunatik_kenny. No forced module loading or app wake-lock changes.
STATE=/data/misc/lunatik_aod
[ "$(getprop ro.product.device)" = onyx ] || exit 0
[ "$(uname -r)" = '6.6.82-4k-ge4d30c77ca39-dirty' ] || exit 0
[ ! -L "$STATE" ] || exit 1
mkdir -p "$STATE" || exit 1
chmod 0700 "$STATE"
exec >> "$STATE/startup.log" 2>&1
echo "START $(date)"
[ ! -f "$STATE/disable" ] || exit 0
KO=/system_ext/etc/lunatik/aod/lunatik_aod_retention.ko
[ "$(sha256sum "$KO" | awk '{print $1}')" = 'b0c37c6f7c06cc1efef8dee5ab1b8a88c142c769270fd21936c5b52f22ad6166' ] || exit 1
[ "$(getenforce)" = Enforcing ] || exit 1
[ -d /sys/module/lunatik_aod_retention ] || insmod "$KO" || exit 1
echo Y > /sys/module/lunatik_aod_retention/parameters/armed || exit 1
echo "READY paired retention $(cat /proc/sys/kernel/random/boot_id)"
