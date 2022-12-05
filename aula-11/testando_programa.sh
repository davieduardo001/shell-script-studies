#/usr/bin/env zsh

vermelho="\033[31;1m"
verde="\033[32;1m"
fecha_cor="\033[m"

(($#==0)) && { echo "necessita de pelo menos um parametro"; exit 1; }

while [ -n "$1" ]; do
	if type -p "$1" >/dev/null; then
		echo "${verde}o programa $1 existe${fecha_cor}"
	else
		echo "${vermelho}o programa $1 nao existe${fecha_cor}"
	fi
	shift
done
