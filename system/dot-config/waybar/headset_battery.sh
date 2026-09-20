#!/bin/bash
# G935 headset battery for Waybar

PERCENT=$(upower -i /org/freedesktop/UPower/devices/headset_hidpp_battery_0 | awk '/percentage:/ {print $2}' | tr -d '%')

if [ -z "$PERCENT" ]; then
  echo '{"text": "󰂎", "tooltip": "G935 not connected"}'
  exit 0
fi

ICON="󰂎" # default icon
if [ "$PERCENT" -ge 90 ]; then ICON="󰁹"
elif [ "$PERCENT" -ge 70 ]; then ICON="󰂁"
elif [ "$PERCENT" -ge 50 ]; then ICON="󰁿"
elif [ "$PERCENT" -ge 30 ]; then ICON="󰁽"
elif [ "$PERCENT" -ge 10 ]; then ICON="󰁻"
else ICON="󰂎"; fi

echo "{\"text\": \"$ICON $PERCENT%\", \"tooltip\": \"G935 Headset Battery: $PERCENT%\"}"
