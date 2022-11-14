#!/usr/bin/env bash

#Verificacao==========
echo -e "\n\nVERIFICANDO A EXISTEENCIA DO PROGRAMA CURL..."
test $(type -p curl) && echo "o programa echo ja existe" || { echo "necessita do programa CURL"; exit 1; }

echo -e "\nTESTANDO INTERNET..."
if wget -q --spider google.com; then
	echo -e "internet conectada\n"
else
	echo "necessita de internet"
	exit 1
fi
#=====================

read -p "Qual cidade que deseja verificar? " cidade
exec_=$(curl wttr.in/"$cidade")

if [ ! "$cidade" ]; then
	echo -e "\n\n+++++++ Necessita de uma cidade..."
	exit 1
else
	echo -e "\n\n+++++++ A CIDADE ESCOLHIDA FOI $cidade"
	echo "$exec_"
fi