#!/bin/sh
BOARD_DIR="$(dirname $0)"
PARTUUID="$($HOST_DIR/bin/uuidgen)"

install -d "$TARGET_DIR/boot/extlinux/"
mkdir -p $BINARIES_DIR/extlinux/
sed "s/%PARTUUID%/$PARTUUID/g" "$BOARD_DIR/extlinux.conf" > "$BINARIES_DIR/extlinux/extlinux.conf"
sed "s/%PARTUUID%/$PARTUUID/g" "$BOARD_DIR/genimage.cfg" > "$BINARIES_DIR/genimage.cfg"
