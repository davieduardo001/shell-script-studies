#!/usr/bin/env bash

function PorID()
{

    database="./banco-de-dados.txt"

    echo "Buscando por id..."
    sleep 2
    clear

    echo "####CONTATOS####"
    echo -e "id | nome | ddd | telefone\n"
    cat "$database" | tr ":" "|"
    echo -e "\nid | nome | ddd | telefone\n"
    
    read -p "quando finalizar a pesquisa pressione enter " nothing
    clear
    interface_de_criacao #retorna para ainterface
}