#!/usr/bin/env sh

function versao_linux()
{
	#versao=$(cat /etc/os-release) variavel global
	local versao=$(cat /etc/os-release) variavel global
	echo "a versao do linux e: $versao"
}

versao_linux #chamando funcao
