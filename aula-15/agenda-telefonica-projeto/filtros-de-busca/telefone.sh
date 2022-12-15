#!/usr/bin/env bash

function telefone()
{
    clear
    database="./banco-de-dados.txt"

    read -p"Escreva o TELEFONE que deseja buscar: " telefone
    echo "buscando..."
    sleep 1s
    telefone=$(cat "$database" | grep -i "$telefone" "$database")


    echo "####CONTATOS####"
    echo -e "id | nome | ddd | telefone\n"
    echo "$telefone" | tr ":" " | "
    echo -e "\nid | nome | ddd | telefone\n"

    read -p "quando finalizar a pesquisa pressione enter " nothing
    clear
    interface_de_criacao #retorna para ainterface
}