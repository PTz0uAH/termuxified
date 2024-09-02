#!/data/data/com.termux/files/usr/bin/sh
# create entry for sources.list.d (if not exists)
# uncomment relevant lines to make it work..
mkdir -p "$PREFIX/etc/apt/sources.list.d"
echo "deb [trusted=yes] https://ptz0uah.github.io/packages termux extras" >$PREFIX/etc/apt/sources.list.d/ptz0uah.list
apt update
pkg search fpc
#echo "PTz(freepascal repo successfully added)uAH"
