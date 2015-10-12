#!/bin/bash
PS3="what do you want to do: "
	select action in start stop status restart exit
	do
		case $action in
			start) 		service vsftpd start
            			date
                        cal
                		;;
			stop) 		service vsftpd stop;;
			status) 	service vsftpd status;;
			restart) 	service vsftpd restart;;
			exit) 		exit;; #或break
			*) 			echo "error";;
		esac
	done
