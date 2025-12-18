#!/bin/bash
# ~/.config/hypr/scripts/clamshellmode.sh

MONITOR_CONF="$HOME/.config/hypr/monitors.conf"
INTERNAL_MONITOR="eDP-1"

if [ "$1" == "close" ]; then
    if [ $(hyprctl monitors | grep -c "Monitor") -gt 1 ]; then
        # Write the disabled state to the config file
        echo "monitor = $INTERNAL_MONITOR, disable" > "$MONITOR_CONF"
        hyprctl notify 1 3000 "rgb(ff4444)" "Clamshell Mode Active"
    fi

elif [ "$1" == "open" ]; then
    # Write the enabled state to the config file
    echo "monitor = $INTERNAL_MONITOR, preferred, auto, 1" > "$MONITOR_CONF"
    hyprctl notify 1 3000 "rgb(44ff44)" "Laptop Mode Active"
fi

