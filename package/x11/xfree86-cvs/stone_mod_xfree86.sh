# --- ROCK-COPYRIGHT-NOTE-BEGIN ---
# 
# This copyright note is auto-generated by ./scripts/Create-CopyPatch.
# Please add additional copyright information _after_ the line containing
# the ROCK-COPYRIGHT-NOTE-END tag. Otherwise it might get removed by
# the ./scripts/Create-CopyPatch script. Do not edit this copyright text!
# 
# ROCK Linux: rock-src/package/x11/xfree86-cvs/stone_mod_xfree86.sh
# ROCK Linux is Copyright (C) 1998 - 2003 Clifford Wolf
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version. A copy of the GNU General Public
# License can be found at Documentation/COPYING.
# 
# Many people helped and are helping developing ROCK Linux. Please
# have a look at http://www.rocklinux.org/ and the Documentation/TEAM
# file for details.
# 
# --- ROCK-COPYRIGHT-NOTE-END ---
#
# [MAIN] 50 xfree86 X11/XFree86 (Graphical User Interface)

main() {
	while
		gui_menu xfree86 'XFree86 Configuration Menu'		\
									\
		'Run "xf86config" (interactve config) now'		\
			'gui_cmd xf86config xf86config'			\
									\
		'Run "X -configure" (automated config) now'		\
			'X -configure'					\
									\
		'Edit/View /etc/X11/XF86Config'				\
			"gui_edit XF86config /etc/X11/XF86Config"
	do : ; done
}

