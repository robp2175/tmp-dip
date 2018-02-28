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
  n)
    xrandr --output ${PRIMARY} --off --output ${SECONDARY} --auto --right-of ${PRIMARY} --rotate normal
    ;;
  *)
    xrandr --output ${PRIMARY} --off --output ${SECONDARY} --auto --right-of ${PRIMARY} --rotate left
    ;;
esac

feh --bg-center ~/pics/nagato.jpg
