# --- T2-COPYRIGHT-NOTE-BEGIN ---
# This copyright note is auto-generated by ./scripts/Create-CopyPatch.
# 
# T2 SDE: package/.../powerpc-utils/stone_mod_machid.sh
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
#
# [MAIN] 35 machid Macintosh mouse emulation

write_config() {
	cat << EOT > /etc/conf/mac_hid
mouse_button_emulation="$mouse_button_emulation"
mouse_button2_keycode="$mouse_button2_keycode"
mouse_button3_keycode="$mouse_button3_keycode"
EOT
}

set_enable() {
	gui_menu machid_enable \
	"Should the mouse emulation be activated. (Current: $mouse_button_emulation)" \
	'enable emulation' 'mouse_button_emulation=1' \
	'disable emulation' 'mouse_button_emulation=0'
	write_config
}

set_button() {
	gui_input "Set new keycode for button $1" \
                  `eval echo "$"$2` "$2"
	write_config
}

main() {
    while
	mouse_button_emulation=1
	mouse_button2_keycode=68 #96
	mouse_button3_keycode=87 #125
	[ -f /etc/conf/mac_hid ] && . /etc/conf/mac_hid

	gui_menu machid 'Macintosh mouse button emulation.
Select an item to change the value:\n(Example keys: F10:68, F11: 87, Apple: 125, KP_Return: 96 - others use showkey)' \
		"Emulation enabled ........ $mouse_button_emulation"   'set_enable' \
		"Mouse Button 2 keycode ... $mouse_button2_keycode" 'set_button 2 mouse_button2_keycode' \
		"Mouse Button 3 keycode ... $mouse_button3_keycode" 'set_button 3 mouse_button3_keycode' \
		'' '' \
		'Edit the /etc/conf/mac_hid file'				\
			"gui_edit 'MAC HID Config File' /etc/conf/mac_hid"	\
		'Configure runlevels for mac_hid service'			\
			'$STONE runlevel edit_srv mac_hid'			\
		'(Re-)Start mac_hid init script'				\
			'$STONE runlevel restart mac_hid'
    do : ; done
}
