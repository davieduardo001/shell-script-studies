#!/usr/bin/env sh

function status_saida()
{
	local diretorio="$HOME"
	lls "$diretorio" 
	
	if [ "$?" -ne "0" ]; then 
		return 1
	else
		return 0
		echo "status de retorno $? "
	fi
}

status_saida
echo "continuei..."
