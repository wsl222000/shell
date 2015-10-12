#!/bin/bash
while :
do
    read -p "input:" str
    echo "$str" >> /tmp/input.txt
    if [[ "$str" == "end" ]]
    then
	break
    fi
done
wc /tmp/input.txt
rm -f /tmp/input.txt
