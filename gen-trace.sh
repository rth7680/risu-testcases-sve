#!/bin/sh

for l in 1 2 3 4; do
  for f in *.bin; do
     t=`basename $f .bin`.$l.trace
     if [ ! -e $t ]; then
       $RISU --test-sve=$l --master -t $t $f
     fi
  done
done
