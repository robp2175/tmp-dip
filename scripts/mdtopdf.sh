#!/bin/sh

##
# This script convert file $1 to pdf by hairyhenderson/markdowntopdf docker image.
#

exec docker run --rm -v $(pwd)/$1:/in/in.md -v $(pwd):/out hairyhenderson/markdowntopdf
