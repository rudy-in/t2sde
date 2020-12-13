# --- T2-COPYRIGHT-NOTE-BEGIN ---
# This copyright note is auto-generated by ./scripts/Create-CopyPatch.
# 
# T2 SDE: package/.../stone/stone_gui_x11.sh
# Copyright (C) 2004 - 2005 The T2 SDE Project
# Copyright (C) 1998 - 2003 ROCK Linux Project
# 
# More information can be found in the files COPYING and README.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License. A copy of the
# GNU General Public License can be found in the file COPYING.
# --- T2-COPYRIGHT-NOTE-END ---

if ! Xdialog --infobox 'Test' 0 0 1 ; then
	echo
	echo "Fatal ERROR: Can't display Xdialog windows!"
	echo
	echo "Maybe the \$DISPLAY variable is not set or you don't have"
	echo "permissions to connect to the X-Server."
	exit 1
fi

. ${SETUPD}/gui_dialog.sh

gui_dialog() {
        Xdialog --stdout --title 'STONE - Setup Tool ONE - T2 System Configuration' "$@"
}

gui_edit() {
	# find editor
	for x in $EDITOR vi nvi emacs xemacs pico ; do
		if which $x > /dev/null
		then xx=$x ; break ; fi
	done
	if [ "$xx" ] ; then
		xterm -T "STONE - $1" -n "STONE" -e bash -c "$xx $2"
	else
		gui_message "Cannot find any editor. Make sure \$EDITOR is set."
	fi
}

gui_cmd() {
	title="$1" ; shift
	xterm -T "STONE - $title" -n "STONE" -e bash -c "$@
			read -p 'Press ENTER to continue'"
}
