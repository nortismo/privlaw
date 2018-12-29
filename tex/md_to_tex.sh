#!/bin/bash

# This script was created to convert a directory full
# of markdown files into tex equivalents. It uses
# pandoc to do the conversion.
#
# By default this will keep the original .md file

FILES=../*.md
for f in $FILES
do
  filename="${f%.*}"
  filename="${filename#../}"
  echo "Converting $f to $filename.tex"
  `pandoc $f -t latex -o $filename.tex`
done