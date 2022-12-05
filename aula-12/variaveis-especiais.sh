#!/usr/bin/env bash

# ! verifica o indice (i+1) ${!ARRAY[@]} => indices em sequencia
# # quantidade de indices ${#ARRAY[@]}

frutas=("batata" "maca" bergamota manga jabuticaba caju)

for i in "${!frutas[@]}"; do
	echo "vetor $i: ${frutas[$i]}"
done

for i in "${!frutas[@]}"; do
	echo "vetor $i: ${frutas[$i]}"
done
