#!/bin/sh

for l in $@; do
  for f in *.bin; do
     t=`basename $f .bin`.$l.trace
     $RISU --test-sve=$l --master -t $t $f
  done
done
