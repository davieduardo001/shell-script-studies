#!/usr/bin/env sh

#variables=============
user="davi"
pass="12345"
#======================

#verificacoes==========
read -p "Qual o user? " _user
read -sp "Qual a senha? " _pass
if [ "$_user" = "$user" ] && [ "$_pass" = "$pass" ]; then
	echo -e "\n\nlogin sendo efetuado...\n"
	sleep 2s
else
	echo -e "\n\nusuario ou senha invalidos \n"
    exit 1
fi

echo -e \
"===========BEM VINDO $user===========
1) abrir browser
2) abrir editor
3) abrir musica
4) sair
=======================================\n"

read -p "Selecione uma opcao: " opcao

if [ "$opcao" -eq "1" ]; then
    chromium-browser
elif [ "$opcao" -eq "2" ]; then
    flatpak run com.vscodium.codium
elif [ "$opcao" -eq "3" ]; then
    flatpak run com.spotify.Client
elif [ "$opcao" -eq "4" ]; then
    exit 0
else
    echo "opcao invalida"
    exit 1
fi