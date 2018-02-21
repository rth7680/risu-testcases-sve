#!/bin/sh

for f in *.risu; do
   b=`basename $f .risu`.bin
   if [ ! -e $b ]; then
     $RISUGEN --sve $f $b
   fi
done
