#!/bin/sh

##
# Workaround for running JOSM
# in Debian 8.6 jessie
#

_JAVA_AWT_WM_NONREPARENTING=1 /usr/bin/josm
