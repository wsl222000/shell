#!/bin/bash
for i in `seq 6`
    do
	if (( $i%2 == 0 ))
	then
	    echo $i
	    break
	fi
done
