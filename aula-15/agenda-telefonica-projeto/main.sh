#!/usr/bin/env bash

# Agenda telefonica que puxa
# as informacoes de um database CSV
# 1- armazenar usuarios e informacoes

#========================== VARIAVEIS GLOBAIS
banco_de_dados="banco-de-dados.txt"
color_cyan="\033[36;1m"
color_close="\033[m"

#========================== BATERIA DE TESTES
[[ ! -e "$banco_de_dados" ]] && > "$banco_de_dados"
(($UID==0)) && { echo "root nao"; exit 1; }

#========================== FUNCOES
source ./functions/interface.sh
source ./functions/add-contacts.sh
source ./functions/busca.sh
source ./functions/ajuda.sh
source ./functions/listar.sh

#===MENU DE ENTRADA================
case $1 in
	-c|--create) create;; #funcao create
	-s|--search) buscar;; #funcao busca
	-h|--help) ajudar;;
	-l|--list) listar;;
	*) interface_de_criacao;; #chama a funcao padrao
esac