#!/bin/sh

##
# This script convert file $1 to pdf by vbatts/pandoc docker image.
#

exec docker run --rm -v $(pwd)/:/input/:ro -v $(pwd)/:/output/ vbatts/pandoc -f rst -t beamer -o /output/out.pdf /input/$1
