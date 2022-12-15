#!/usr/bin/env bash

function create()
{
    source ./functions/interface.sh
    banco_de_dados="banco-de-dados.txt"
    
    Nome=""
    DDD=""
    Telefone=""

    while [[ -z "$Nome" || -z "$DDD" || -z "$Telefone" ]]; do
        echo "favor, entrar com dados possiveis."

        read -p "Nome: " Nome
        read -p "DDD: " DDD
        read -p "Telefone: " Telefone

        #testa se um telefone ja existe
        ddd_database=$(grep "$Telefone" "$banco_de_dados")
        ddd_database=$(echo "$ddd_database" | cut -d ':' -f 3)
        if [[ -n "$Telefone" && "$ddd_database" -eq "$DDD" ]] && grep -qi "$Telefone" "$banco_de_dados"; then 
            echo 'opss... telefone ja adicionado'
            break
        fi

        #enviando para o banco de dados
	    if [[ -n "$Nome" && -n "$DDD" && -n "$Telefone"  ]]; then
        	ID=$(wc -l "$banco_de_dados")
        	ID=$(echo "$ID" | cut -d ' ' -f 1)
	        ID=$(("$ID"+1))

        	echo "Enviando para o bando de dados..."
		    echo "${ID}:${Nome}:${DDD}:${Telefone}">>"$banco_de_dados"
	    fi
    done

    interface_de_criacao
}