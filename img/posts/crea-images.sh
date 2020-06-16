extension=".jpg"
file1=$1$extension

for file in $file1;

do
  convert $file -resize 230x136 $(basename $file .jpg)_placehold.jpg;
  convert $file -resize 1070x631 $(basename $file .jpg)_thumb@2x.jpg;
  convert $file -resize 535x316 $(basename $file .jpg)_thumb.jpg;
done
