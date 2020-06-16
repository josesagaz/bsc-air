#!/bin/bash
file1=$1
for f in $file1; do

  cp "$f" "${f%.*}_thumb@2x.${f##*.}"
  mogrify -resize 1070x713 "${f%.*}_thumb@2x.${f##*.}"

  cp "$f" "${f%.*}_thumb.${f##*.}"
  mogrify -resize 535x357 "${f%.*}_thumb.${f##*.}"

  cp "$f" "${f%.*}_placehold.${f##*.}"
  mogrify -resize 230x153 "${f%.*}_placehold.${f##*.}"

  mogrify -resize 1920x1280 "$f"

done
ls -al
