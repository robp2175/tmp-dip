#!/bin/sh

##
# This script runs the second monitor on the right side, 90 dgree rotated.
#

case "$1" in
  off)
    xrandr --output eDP1 --auto --output HDMI1 --off
    ;;
  c)
    xrandr --output eDP1 --auto --mode 1024x768 --output HDMI1 --auto --mode 1024x768 --same-as eDP1
    ;;
  l)
    xrandr --output eDP1 --auto --output HDMI1 --auto --left-of eDP1 --rotate left --brightness 0.8
    ;;
  *)
    xrandr --output eDP1 --auto --output HDMI1 --auto --left-of eDP1 --rotate normal --brightness 0.8
    ;;
esac

feh --bg-center ~/pics/nagato.jpg