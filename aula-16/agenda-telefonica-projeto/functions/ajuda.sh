#!/usr/bin/env bash


function ajudar()
{
	source ../functions/interface.sh

    clear
cat <<EOF
opcoes de entrada NA INTERFACE
	*create (cria um novo contato)
	*help (voce ja esta aqui)
	*search (buscar por contatos existentes)
	*listar (lista os contatos existentes)
	*cls ou clear (limpa o prompt)
	*menu (retorna para o menu)
	
opcoes de entrada COMO PARAMETROS
	-c ou --create (cria um novo contato)
	-s ou --search (buscar por contatos existentes)
	-h ou --help (voce ja esta aqui)
	-l ou --list (lista os contatos existentes)

ctrl+c (para fechar o programa)

O que deseje fazer? 

EOF
	read -p "ps: pressione enter quando tiver acabado de ler suas opcoes " nothing
	interface_de_criacao #volta para a interface
}