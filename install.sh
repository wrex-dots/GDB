#!/bin/sh

DASH="gdb-dashboard"
HERE="$(realpath `dirname -- "${BASH_SOURCE[0]}"`)"
REPO="$HERE/$DASH"

[ -e "$REPO" ] && rm -rf "$REPO"

git clone git@github.com:cyrus-and/gdb-dashboard.git "$HERE/$DASH"

ln -sf "$HERE/$DASH/.gdbinit" "$HOME"
ln -sf "$HERE/.gdbinit.d"     "$HOME"
