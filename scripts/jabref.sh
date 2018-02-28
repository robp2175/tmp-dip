#!/bin/sh

##
# Workaround for running JabRef
# in Debian 8.6 jessie with
# tiling window manager
#

_JAVA_AWT_WM_NONREPARENTING=1 java -jar ~/download/JabRef-4.1.jar
