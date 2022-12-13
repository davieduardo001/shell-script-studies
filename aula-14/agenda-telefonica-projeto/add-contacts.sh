#!/usr/bin/env bash

function create()
{    
    Nome=""
    DDD=""
    Telefone=""

    while [[ -z "$Nome" || -z "$DDD" || -z "$Telefone" ]]; do
        echo "favor, entrar com dados possiveis."

        read -p "Nome: " Nome
        read -p "DDD: " DDD
        read -p "Telefone: " Telefone

        echo '========================'>>"$banco_de_dados"
	    echo "$Nome">>"$banco_de_dados"
	    echo "$DDD $Telefone">>"$banco_de_dados"
	    echo '========================'>>"$banco_de_dados"
    done
}