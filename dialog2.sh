#!/bin/bash
#comment
title="dialog title"
wel="welcome use \ndialog network config"

setIP()
{
	dialog --title "$title" --nocancel \
	--form "def" 15 50 4 \
	"ip:" 1 1 "" 1 5 20 0 \
	"nm:" 2 1 "" 2 5 20 0 \
	"gw:" 3 1 "" 3 5 20 0 \
	"ns:" 4 1 "" 4 5 20 0 2> file
}

getIP()
{
	while read b
	do
		arr[x++]=$b
	done < file		
}

dialog --title "$title" --msgbox "$wel" 15 50

dialog --title "$title" --yesno "are you sure" 15 50
if (( $? == 0 ))
then
	dialog --title "$title" --nocancel --radiolist \
	"please select" 15 50 2 \
	"dhcp" "dhcp server get" off \
	"static" "user manual config" off 2> file1

	a=`cat file1`
	
	if [[ "$a" == "dhcp" ]]
	then
		cat > file1 << EOF
DEVICE=eth0
BOOTPROTO=dhcp
ONBOOT=yes
TYPE=Ethernet
EOF
	else
		setIP

		getIP

		for i in "${arr[@]}"
		do
			if [[ "$i" == "" ]]
			then
				echo "must input"
				unset arr x
				sleep 2
				setIP
				getIP
			fi
		done

					
		cat > file1 << EOF
DEVICE=eth0
BOOTPROTO=none
ONBOOT=yes
TYPE=Ethernet
IPADDR=${arr[0]}
NETMASK=${arr[1]}
GATEWAY=${arr[2]}
EOF
	fi

else
	exit 1
fi
