#!/bin/bash

# -- first setup
xrandr --output DP-4 --rotate left --pos 0x0 --right-of HDMI-0

# -- new setup
# Set HDMI-0 as primary display
#xrandr --output HDMI-0 --primary

# Set DP-3 as secondary display positioned to the left of HDMI-0
#xrandr --output DP-3 --left-of HDMI-0
