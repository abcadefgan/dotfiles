#!/bin/bash

skjermer="berbar\nberbardualHDMI\nHDMI\nrotVenstre\nrotHøyre"

skjermvalg=$(echo -e "$skjermer" | rofi -dmenu -i -fn "Inconsolata-8" -theme eighties-dark.rasi -p "")

case "$skjermvalg" in
	berbar) xrandr --output LVDS1 --primary --mode "1366x768" --output HDMI1 --off && pacmd set-card-profile 0 output:analog-stereoi & xautolock -enable;;
	
	berbardualHDMI) xrandr --output LVDS1 --auto --output HDMI1 --auto;;

	HDMI) xrandr --output HDMI1 --mode "1920x1080" -r 60 --output LVDS1 --off && pacmd set-card-profile 0 output:hdmi-stereo && xautolock -disable;;
	
	rotVenstre) xrandr --output LVDS1 --rotate left;;
	
	rotHøyre) xrandr --output LVDS1 --rotate right;;
esac
