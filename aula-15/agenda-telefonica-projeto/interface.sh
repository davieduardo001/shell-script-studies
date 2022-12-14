#!/usr/bin/env bash

source ./add-contacts.sh

function interface_de_criacao()
{
	clear
	echo "HELLO!!"
	while true; do
		read -p $'\033[31;1m> \033[m' option

		case "$option" in
			create) create;;
			cls) clear;;
		esac 
	done
}