#!/usr/bin/env bash

function listar()
{

    database="./banco-de-dados.txt"

    echo "Buscando no database..."
    sleep 2
    clear

    echo "####CONTATOS####"
    echo -e "id | nome | ddd | telefone\n"
    cat "$database" | tr ":" "|"
    echo -e "\nid | nome | ddd | telefone\n"
    
    read -p "quando finalizar a pesquisa pressione enter " nothing
    interface_de_criacao #retorna para ainterface
}