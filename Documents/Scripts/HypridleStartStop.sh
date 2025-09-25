#!/bin/bash

if pgrep -x hypridle >/dev/null; then
  echo "Hypridle is running, stopping it..."
  hyprctl notify 1 5000 "rgb(d20f39)" "Hypridle [OFF]"

  pkill -x hypridle
else
  echo "Hypridle is not running, starting it..."
  hyprctl notify 1 5000 "rgb(40a02b)" "Hypridle [ON]"

  hypridle &
fi
