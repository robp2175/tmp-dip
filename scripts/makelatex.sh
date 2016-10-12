#!/bin/sh

##
# This script makes pdf from latex by using docker image blang/latex.
#
# $1 - input file without .tex (parameter of script)
#

exec docker run --rm -i --user="$(id -u):$(id -g)" -v $PWD:/data blang/latex /bin/sh -c "xelatex $1.tex && makeglossaries $1 && xelatex $1.tex && xelatex $1.tex"
