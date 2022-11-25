#!/usr/bin/env sh

#variaveis=================
cpf="00000000000"
senha="12345"
usuario="davi"
#==========================

echo "======BEM VINDOS AO PROGRAMA======"
read -p "escreva o usuario " _usr
read -p "escreva o cpf " _cpf
read -p "escreva a senha " _pass

if [ "$usuario" = "$_usr" ] && [ "$senha" = "$_pass" ] && [ "$cpf" = "$_cpf" ]; then
    echo "fazendo o login..."
    sleep 2s
    echo "login efetuado com sucesso!!"
else
    echo "algum dado foi errado"
fi