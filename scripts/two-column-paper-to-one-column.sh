#!/bin/sh

##
# This script converts two column pdf paper to one column pdf.
#

convert -density 160 -compress zip $1 +repage -crop 2x1@ +repage $1
