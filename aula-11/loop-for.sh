#!/usr/bin/env bash

#for VARIAVEL in "LISTA" "Nome1" "Nome2"; do
#	command block
#done


for fruta in "tomate" "jaca" "maca" "pera" "pergamota"; do
	echo "Lista de frutas: $fruta"
done

for number in 1 2 3 4 5; do
	echo "$number"
done

#n funciona no padrao POSIX
for n in {0..20}; do
	echo "$n"
done

for n in {0..20..2}; do
	echo "$n"
done
