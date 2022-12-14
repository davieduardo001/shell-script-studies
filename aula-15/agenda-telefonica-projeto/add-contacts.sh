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

        #testa se o telefone ja existe
        if grep -qi "$Telefone" "$banco_de_dados"; then
            #testa se o ddd e igual
            ddd_database=$(grep "$Telefone" "$banco_de_dados")
            ddd_database=$(echo "$ddd_database" | cut -d ':' -f 3)

            if [[ "$ddd_database" -eq "$DDD" ]]; then
                echo 'opss... telefone ja adicionado'
                break
            fi
        fi

        #enviando para o banco de 
        ID=$(wc -l "$banco_de_dados")
        ID=$(echo "$ID" | cut -d ' ' -f 1) 
        ID=$(("$ID"+1))

        echo "Enviando para o bando de dados..."
	    echo "${ID}:${Nome}:${DDD}:${Telefone}">>"$banco_de_dados"
    done
}