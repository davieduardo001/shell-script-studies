#!/usr/bin/env bash

read -p "deseja sair? [S/n]" opcao
opcao="${opcao:=s}" #se for nula recebe "s"

[[ "$opcao" = 's' ]] && echo "saindo..." || echo "ficando..."