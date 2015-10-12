#!/bin/bash
    cDir()
	{
		[ ! -d "$1" ] && { mkdir "$1"; echo "$1 create ok"; } || echo "$1 exist";
	}
	a=10;
	while (( a > 0 ))
	do
		if (( a <= 9 ))
		then
			b="0${a}"
			cDir dir${b}
		else
			cDir dir${a}
		fi
		let a--
	done
