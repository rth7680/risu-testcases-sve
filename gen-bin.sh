#!/bin/sh

for f in *.risu; do
   b=`basename $f .risu`.bin
   $RISUGEN --sve $f $b
done
