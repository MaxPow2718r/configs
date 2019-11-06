#!/bin/sh

export IDENTIFIER="unicode"
battery_status=$(cat /sys/class/power_supply/BAT1/capacity)

while true; do
		xsetroot -name "$(date "+%a %d %b %R") | $battery_status%"
		sleep 10
done &

exec dwm
