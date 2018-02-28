#!/bin/sh

##
# Workaround for running JOSM
# in Debian 8.6 jessie with
# tiling window manager
#

_JAVA_AWT_WM_NONREPARENTING=1 java -jar ~/download/josm-tested.jar
