# --- T2-COPYRIGHT-NOTE-BEGIN ---
# This copyright note is auto-generated by ./scripts/Create-CopyPatch.
# 
# T2 SDE: package/.../stone/stone_gui_text.sh
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

# Use: gui_menu "ID" "Title" "Text" "Action" [ "Text" "Action" [ .. ] ]
#
gui_menu() {
	echo ; echo "+---" ; echo "$2" | fold -s -w70 | sed 's,^,|  ,'
	echo "+---" ; echo ; shift ; shift ; local nr=1 xnr=1 y in

	while [ $# -ge 2 ] ; do
		y="${2#\*}"
		if [ -z "$y" ] ; then
			if [ -z "$1" ] ; then
				echo "       $1" ; shift ; shift
			else
				echo "    -  $1" ; shift ; shift
			fi
		else
			printf '%5d. %s\n' "$nr" "$1"
			eval "local action_$nr=\"\$y\""
			nr=$(( $nr + 1 )) ; shift ; shift
		fi
		xnr=$(( $xnr + 1 ))
		if [ $(( $xnr % 20 )) -eq 0 -a $# -gt 4 ] ; then
			echo ; echo -n ">> " ; read in || return 1
			[ "$in" ] && break
			echo
		fi
	done

	if [ -z "$in" ] ; then echo ; echo -n "> " ; read in ; fi
	in="action_$in" ; [ -z "${!in}" ] && return 1
	eval "${!in}" ; return 0
}

# Use: gui_input "Text" "Default" "VarName"
#
gui_input() {
	echo ; echo "+---" ; echo "$1" | fold -s -w66 | sed 's,^,|  ,'
	echo "+---" ; echo ; echo -n "[ $2 ] > " ; local tmp
	read tmp && [ -z "$tmp" ] && tmp="$2" ; eval "$3=\"\$tmp\""
}

# Use: gui_yesno "Text"
#
# [returns 0 if yes, 1 if no]
gui_yesno() {
	local input y="[y]" n=" n "

	echo ; echo "+---"; echo "$1" | fold -s -w66 | sed 's,^,|   ,'
	echo "+---" ; echo

	while :; do
		echo -en "\r? $y\t$n"
		read -sr -n 1 input

		if   [ "$input" = ""  ]; then break
		elif [ "$input" = "y" ]; then y="[y]"; n=" n "
		elif [ "$input" = "n" ]; then y=" y "; n="[n]"
		fi
	done

	[ "$input" = "[y]" ] && return 0
	return 1
}

# Use: gui_message "Text"
#
gui_message() {
	echo ; echo "+---" ; echo "$1" | fold -s -w66 | sed 's,^,|  ,'
	echo "+---" ; echo ; echo "== Press ENTER to continue ==" ; read
}

# Use: gui_edit "Text" "File"
#
gui_edit() {
	# find editor
	for x in $EDITOR vi nvi emacs xemacs pico ; do
		if type -p $x > /dev/null
		then xx=$x ; break ; fi
	done
	if [ "$xx" ] ; then
		eval "$xx $2"
	else
		gui_message "Cannot find any editor. Make sure \$EDITOR is set."
	fi
}

# Use: gui_cmd "Title" "Command"
#
gui_cmd() {                       
        shift ; eval "$@"
	read -p "Press ENTER to continue."
}

