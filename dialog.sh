#!/bin/bash
	dialog --title "network set" --form "ip nm gw ns" 15 50 4 \
	"ip:" 1 1 "" 1 5 20 0 \
	"nm:" 2 1 "" 2 5 20 0 \
	"gw:" 3 1 "" 3 5 20 0 \
	"ns:" 4 1 "" 4 5 20 0 2> file1

