#!/bin/sh
sleep 1 && ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 -f alsa -ac 2 -i hw:1,0 output.avi
