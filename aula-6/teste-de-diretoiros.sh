#!/usr/bin/env sh

diretorio1="/home/ed/Downloads"
diretorio2="/home/ed/Images"
if [ -d "$diretorio" ] || [ -d "$diretorio2" ]; then
	echo "um ou mais diretorios existem"
else
	echo "nem um diretorio existe"
fi