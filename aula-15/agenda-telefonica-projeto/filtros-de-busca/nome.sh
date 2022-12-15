#!/usr/bin/env bash

function nome()
{
    clear
    database="./banco-de-dados.txt"

    read -p"Escreva o NOME que deseja buscar: " nome
    echo "buscando..."
    sleep 1s
    nomes=$(cat "$database" | grep -i "$nome" "$database")


    echo "####CONTATOS####"
    echo -e "id | nome | ddd | telefone\n"
    echo "$nomes" | tr ":" " | "
    echo -e "\nid | nome | ddd | telefone\n"

    read -p "quando finalizar a pesquisa pressione enter " nothing
    clear
    interface_de_criacao #retorna para ainterface
}