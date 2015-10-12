#!/bin/bash
a=0
case $a in
	0|1|2|3)    echo a;;
	[468])      echo b;;
	[a-z][A-Z]) echo c;;
	*)	    echo d;;
esac
