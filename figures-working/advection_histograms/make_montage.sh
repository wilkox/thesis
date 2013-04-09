#!/bin/sh
first=`ls *.pdf | head -12`
second=`ls *.pdf | tail -10`
montage -density 1000 -quality 100 -geometry 800x800 -tile 3x4 $first montage1.png
montage -density 1000 -quality 100 -geometry 800x800 -tile 3x4 $second montage2.png
