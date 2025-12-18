#!/usr/bin/env sh

#checks if ext monitor is connected
if hyprctl monitors | grep -q 'HDMI-A-1'; then
	if [[ "$1" == "close" ]]; then
#disable laptop screen if closed
     hyprctl keyword monitor "eDP-1, disable"
elif [[ "$1" == "open" ]]; then
	#enable lapop screen when lid is open
	hyprctl heyword monitor "eDP-1, preferred, auto, 1"
fi
fi
