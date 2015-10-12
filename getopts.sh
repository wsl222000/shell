#!/bin/bash
if [ $# -lt 1 ]
then
  date
else
  while getopts mdyDHMSTJjwahr OPTION
  do
	case $OPTION
  	in
	  	m)date '+%m';;
	  	d)date '+%d';;
		y)date '+%y';;
　　　　　　　　D)date '+%D';;
　　　　　　　　H)date '+%H';;
　　　　　　　　M)date '+%M';;
　　　　　　　　S)date '+%S';;
　　　　　　　　T)date '+%T';;
　　　　　　　　j)date '+%j';;
　　　　　　　　J)date '+%y%j';;
　　　　　　　　w)date '+%w';;
　　　　　　　　a)date '+%a';;
　　　　　　　　h)date '+%h';;
　　　　　　　　r)date '+%r';;
		\?)echo "wu xiao";;
	esac
  done
fi
