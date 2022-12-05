#!/usr/bin/env bash

declare -A dados
dados[nome]="jeff"
dados[sobrenome]="jorg"
dados[idade]="00"

echo -e "o nome eh: ${dados[nome]}\n O sobrenome eh: ${dados[sobrenome]}"

