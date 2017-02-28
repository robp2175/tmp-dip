#!/bin/sh

##
# This script runs the second monitor on the right side, 90 dgree rotated.
#

PRIMARY=eDP1
SECONDARY=DP1-1

case "$1" in
  off)
    xrandr --output ${SECONDARY} --off --output ${PRIMARY} --auto
    ;;
  c)
    xrandr --output ${PRIMARY} --auto --mode 1024x768 --output ${SECONDARY} --auto --mode 1024x768 --same-as ${PRIMARY}
    ;;
  l)
    xrandr --output ${PRIMARY} --auto --output ${SECONDARY} --auto --left-of ${PRIMARY} --rotate left --brightness 0.8
    ;;
  *)
    xrandr --output ${PRIMARY} --auto --output ${SECONDARY} --auto --left-of ${PRIMARY} --rotate normal --brightness 0.8
    ;;
esac

feh --bg-center ~/pics/nagato.jpg
