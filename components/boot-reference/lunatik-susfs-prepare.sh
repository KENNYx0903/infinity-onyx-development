#!/system/bin/sh
# Provision the ROM-owned common early entry before ksud post-fs-data. lunatik_kenny.
set -eu
[ "$(id -u)" = 0 ] || exit 1
DIR=/data/adb/post-fs-data.d
SRC=/system_ext/etc/lunatik/susfs/early.sh
DST=$DIR/00-lunatik-susfs.sh
[ ! -L /data/adb ] && [ ! -L "$DIR" ] && [ ! -L "$DST" ] || exit 1
umask 077
mkdir -p "$DIR"
if [ ! -f "$DST" ] || ! cmp -s "$SRC" "$DST"; then
    cp "$SRC" "$DIR/.00-lunatik-susfs.tmp"
    chown 0:0 "$DIR/.00-lunatik-susfs.tmp"
    chmod 0700 "$DIR/.00-lunatik-susfs.tmp"
    mv -f "$DIR/.00-lunatik-susfs.tmp" "$DST"
fi
chown 0:0 "$DST"
chmod 0700 "$DST"
