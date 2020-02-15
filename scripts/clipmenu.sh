#!/bin/bash
export CM_LAUNCHER=rofi
export CM_HISTLENGTH=12

case "$1" in
	show)
		clipmenu -theme eighties-dark.rasi;;
	clean)
		clipdel -d ".*" \
		&& notify-send "Clipboard Content deleted" -u low \
		|| notify-send "Errors occurred while Clean Up"	;;
esac
