#!/bin/sh
mkdir wav
for file in *.wav
do
  basename="$(basename "$file" .wav)"
  lame --preset insane "$basename.wav" "$basename.mp3"
  mv "$basename.wav" wav/
done
