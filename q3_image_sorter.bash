#!/bin/bash
ls -R --full-time $1 | grep .jpg | sort -k6 -k7 | cut -f9 -d" " > timeline.txt;

for i in `cat timeline.txt`
do
find . -name "$i"
done > timeline1.txt

convert -append `cat timeline1.txt` `echo $1 | tr '/' '_' `.jpg

rm timeline.txt; rm timeline1.txt;

