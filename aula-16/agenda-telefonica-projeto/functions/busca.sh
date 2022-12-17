#!/usr/bin/env bash

function buscar() 
{
    source ./filtros-de-busca/id.sh
    source ./filtros-de-busca/nome.sh
    source ./filtros-de-busca/telefone.sh
    source ./interface.sh
    
    clear

#menu de escolhas
cat <<EOF
Pelo que deseja buscar?
    *Nome
    *Telefone
    *ID (imprime todos os contatos)
    
deseja sair? escreva 'exit'
EOF
    read -p "Qual sua escolha? " opcao
    opcao=$(echo "$opcao" | tr [:upper:] [:lower:])

    case "$opcao" in
        exit) interface_de_criacao ;;   #retorna para o menu
        id) PorID;;                     #busca por ID
        nome) nome;;                      #busca por nome
        telefone) telefone;;                      #busca por nome
        *) echo "essa opcao nao existe ;-;" ;;
    esac
}