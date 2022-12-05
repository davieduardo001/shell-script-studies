#!/usr/bin/env bash

frutas=("batata" "maca" bergamota manga jabuticaba caju)

for fruta in "$frutas[@]"; do #@ linha a linha, * em string
	echo "$fruta"
done
