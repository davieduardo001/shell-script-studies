#!/usr/bin/env bash



function interface_de_criacao()
{
	source ./ajuda.sh
	source ./add-contacts.sh
	source ./busca.sh

	clear
	echo -e "HELLO!! WELLCOME TO CONTACTS! :D\n"
	echo "==CREATE | SEARCH | LIST | HELP=="
	
	while true; do
		read -p $'\033[31;1m> \033[m' option

		case "$option" in
			create|Create|CREATE) create;; #funcao add-contacts
			help|Help|HELP) ajudar;; #funcao ajuda
			search|Search|SEARCH) buscar;;
			list|List|LIST) listar;;
			cls|clear) clear;;
		esac 
	done
}