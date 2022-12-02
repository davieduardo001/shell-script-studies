#!/usr/bin/env sh

while :; do
	read -p "qual o seu nome? " nome
	[ -z "$nome" ] && echo "entre com um valor." || break
done

echo "continuando..."
