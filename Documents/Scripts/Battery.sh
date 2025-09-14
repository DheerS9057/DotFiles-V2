#!/bin/bash

BAT="/sys/class/power_supply/BAT0"
CAPACITY=$(cat "$BAT/capacity")
STATUS=$(cat "$BAT/status")

# Choose icon based on percentage
if [ "$CAPACITY" -ge 80 ]; then
  ICON=""
elif [ "$CAPACITY" -ge 60 ]; then
  ICON=""
elif [ "$CAPACITY" -ge 40 ]; then
  ICON=""
elif [ "$CAPACITY" -ge 20 ]; then
  ICON=""
else
  ICON=""
fi

# Add charging icon overlay if charging
if [ "$STATUS" = "Charging" ]; then
  ICON=" $ICON" # lightning bolt + battery
fi

echo "$ICON $CAPACITY%"
