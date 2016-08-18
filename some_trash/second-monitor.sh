#!/bin/sh

##
# This script runs the second monitor on the right side, 90 dgree rotated.
#

xrandr --output eDP1 --auto --output DP1 --auto --right-of eDP1 --rotate left --brightness 0.8
feh --bg-center ~/pics/nagato.jpg
