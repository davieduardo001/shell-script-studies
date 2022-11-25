#!/usr/bin/env sh

diretorio1="/home/e/Downloads"
diretorio2="/home/ed/Pictures"
if [ -d "$diretorio1" ] || [ -d "$diretorio2" ]; then
	echo "um ou mais diretorios existem"
else
	echo "nem um diretorio existe"
fi
