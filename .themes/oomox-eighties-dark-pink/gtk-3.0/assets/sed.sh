#!/bin/sh
sed -i \
         -e 's/#2d2d2d/rgb(0%,0%,0%)/g' \
         -e 's/#f2f0ec/rgb(100%,100%,100%)/g' \
    -e 's/#2d2d2d/rgb(50%,0%,0%)/g' \
     -e 's/#ffcc66/rgb(0%,50%,0%)/g' \
     -e 's/#2d2d2d/rgb(50%,0%,50%)/g' \
     -e 's/#f2f0ec/rgb(0%,0%,50%)/g' \
	"$@"
