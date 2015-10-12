#!/bin/bash
checkRPM()
{
for i
do
    if rpm -q $i >/dev/null 2>$1
    then
	echo "$i is installed!"
    fi
done
}
checkRPM httpd
