#!/bin/sh
for i in *; do convert $i -thumbnail 100 $i; done;
