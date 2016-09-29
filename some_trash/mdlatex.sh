#!/bin/sh

##
# This script convert file $1 to pdf by vbatts/pandoc docker image.
#

exec docker run --rm -v $(pwd)/$1:/input/in.pdf:ro -v $(pwd)/:/output/ vbatts/pandoc -f markdown_github -t latex -o /output/out.pdf /input/in.pdf
