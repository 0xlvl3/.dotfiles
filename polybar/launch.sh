#!/usr/bin/env bash

killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 on HDMI-0
MONITOR=HDMI-0 polybar --reload bar1 &

# Launch bar2 on DP-4
MONITOR=DP-4 polybar --reload bar2 &

echo "Bars launched..."
