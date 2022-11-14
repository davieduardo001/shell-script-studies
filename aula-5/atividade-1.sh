#!/usr/bin/env bash

#Preciso criar um menu com os seguintes comandos:
#Firefox
#Vscode
#Spotify

echo "#======================#"
echo "1) Abrir o firefox"
echo "2) Abrir Vscode"
echo "3) Abrir Spotify"
echo -e "#======================# \n"

read -p "SELECIONE UMA DAS OPCOES: " opcao

if [ "$opcao" -eq "1" ]; then
	firefox
elif [ "$opcao" -eq "2"  ]; then
	flatpak run com.vscodium.codium
elif [ "$opcao" -eq "3" ]; then
	flatpak run com.spotify.Client
else
	echo "nao existe essa opcao"
fi