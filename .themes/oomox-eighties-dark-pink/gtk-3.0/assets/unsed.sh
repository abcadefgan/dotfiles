#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#2d2d2d/g' \
         -e 's/rgb(100%,100%,100%)/#f2f0ec/g' \
    -e 's/rgb(50%,0%,0%)/#2d2d2d/g' \
     -e 's/rgb(0%,50%,0%)/#ffcc66/g' \
 -e 's/rgb(0%,50.196078%,0%)/#ffcc66/g' \
     -e 's/rgb(50%,0%,50%)/#2d2d2d/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#2d2d2d/g' \
     -e 's/rgb(0%,0%,50%)/#f2f0ec/g' \
	"$@"