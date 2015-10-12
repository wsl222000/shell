#!/bin/bash
r=0
while (( $#>0 ))
do
    (( r+=$1 ))
shift
done
echo "the sum is:$r"
