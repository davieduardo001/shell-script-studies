#!/usr/bin/env sh

#faz o rebaixamento do parametro
#shift comando "tira o primeiro da fila"
while :; do
	case $1 in
		jeff) echo "sim"; shift ;;
		test) echo "nao";;
	esac
done
