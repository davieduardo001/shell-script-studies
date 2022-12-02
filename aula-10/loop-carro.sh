#!/usr/bin/env sh

#break = para o loop
#continue = volta o loop do inicio
while :; do
	read -p "Sujeira saiu? [s/n] " sujeira
	[ "$sujeira" = "s" ] && break
done

echo "o carro foi limpo"
