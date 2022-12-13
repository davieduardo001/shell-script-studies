#!/usr/bin/env bash

#red="\033[31;1m"
#close-color="\033[m"

clear
echo \
"
WELCOME TO DOS - windows emulator
"


while true; do
	read -p $'\033[31;1m>\033[m ' entrada

	if [ "$entrada" = "cls" ]; then
		clear
	elif [ "$entrada" = "edit" ]; then
		nano
	fi
done