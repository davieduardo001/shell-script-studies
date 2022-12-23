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
	echo "ligando debug..."
	sleep 1s
	set -x
}

function desliga_debug()
{
	echo "desligando debug..."
	sleep 1s
	set +x
}
##############MAIN

liga_debug

desliga_debug