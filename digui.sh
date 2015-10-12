#!/bin/bash
#comment
echo $*
fun1()
	{
		if [[ "$1" =~ "abc" ]]
		then
			echo "ok"
		else
#			read -p "input: " var1
			shift
			fun1 "$@"
		fi
	}
fun1 $@
