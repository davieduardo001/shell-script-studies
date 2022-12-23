#!/usr/bin/env bash

#set -x

##############VARIAVEIS
nome="debugger"
versao="1.2-beta"
dir_home="/home/${USER}"

##############CONFIG
DEBUG="0" # 0 desligado ou 1 ligado

##############FUNCOES
function liga_debug()
{
	echo -e "\e[35m"
	echo "ligando debug..."
	sleep 1s
	set -x
}

function desliga_debug()
{
	set +x
	echo "desligando debug..."
	echo -e "\e[m"
	sleep 1s
}
##############MAIN

liga_debug

desliga_debug