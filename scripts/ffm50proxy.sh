#!/bin/bash
for i in ls *.MP4 
do 
	ffmpeg -i "$i" -vf scale=-1:540 -c:v  libx264 -profile:v high -preset superfast -crf 16 -x264opts keyint=1:min-keyint=1:ref=1:bframes=0:qcomp=0.8:aq-strength=0.5  -c:a aac -b:a 320k  -y "proxy_$i" 
done

