# --- ROCK-COPYRIGHT-NOTE-BEGIN ---
# 
# This copyright note is auto-generated by ./scripts/Create-CopyPatch.
# Please add additional copyright information _after_ the line containing
# the ROCK-COPYRIGHT-NOTE-END tag. Otherwise it might get removed by
# the ./scripts/Create-CopyPatch script. Do not edit this copyright text!
# 
# ROCK Linux: rock-src/package/*/lilo/stone_mod_lilo.sh
# Copyright (C) 1998 - 2003 ROCK Linux Project
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
# [MAIN] 70 lilo LILO Boot Loader Setup

create_kernel_list() {
        first=1
        for x in `(cd /boot/ ; ls vmlinux_* ) | sort -r` ; do
                if [ $first = 1 ] ; then
                        label=linux ; first=0
                else
                        label=linux-${x/vmlinux_/}
                fi

                cat << EOT

image=/boot/$x
        label=$label
        append="root=$rootdev"
        read-only

EOT
        done
}

create_lilo_conf() {
	i=0 ; rootdev="`grep ' / ' /proc/mounts | tail -n 1 | \
					awk '/\/dev\// { print $1; }'`"
	rootdev="$( cd `dirname $rootdev` ; pwd -P )/$( basename $rootdev )"
	while [ -L $rootdev ] ; do
		directory="$( cd `dirname $rootdev` ; pwd -P )"
		rootdev="$( ls -l $rootdev | sed 's,.* -> ,,' )"
		[ "${rootdev##/*}" ] && rootdev="$directory/$rootdev"
		i=$(( $i + 1 )) ; [ $i -gt 20 ] && rootdev="Not found!"
	done
	bootdev="$( dirname $rootdev )/disc"

	cat << EOT > /etc/lilo.conf
boot=$bootdev
delay=40
lba32
EOT

	create_kernel_list >> /etc/lilo.conf

	cat << EOT >> /etc/lilo.conf
image=/boot/memtest86.bin
	label=memtest
	optional
EOT
	gui_message "This is the new /etc/lilo.conf file:

$( cat /etc/lilo.conf )"

}

main() {
    while
        gui_menu lilo 'LILO Boot Loader Setup' \
                '(Re-)Create default /etc/lilo.conf' 'create_lilo_conf' \
                '(Re-)Install LILO in MBR of /dev/discs/disc0/disc' \
			'gui_cmd "Installing LILO in MBR" "lilo -v"' \
                "Edit /etc/lilo.conf (recommended before installing LILO)" \
                        "gui_edit 'LILO Config File' /etc/lilo.conf"
    do : ; done
}

