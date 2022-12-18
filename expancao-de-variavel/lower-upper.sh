#!/usr/bin/env bash

read -p $'digite um texto: \n' texto
#texto=$(echo "$texto" | tr [:lower:] [:upper:])
texto="${texto^^}"

echo "$texto"