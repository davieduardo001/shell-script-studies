#!/usr/bin/env sh

#testes====================
if [ "$USER" != "root" ]; then
    echo "precisa de root"
    exit 1
fi
#==========================

echo -e \
"
===========BEM VINDO===========
1) criar user
2) excluir user
3) info do sistema
4) sair
=======================================\n"
read -p "selecione uma das opcoes acima: " opcoes
case "$opcoes" in
    1)
        read -p "qual o nome do user que deseja adicionar? " _user
        adduser "$_user"
    ;;
    2) 
        read -p "qual o nome do user que deseja excluir? " _user
        userdel -r "$_user"
    ;;
    3)
        neofetch
    ;;
    4)
        echo "saido do sistema"
        sleep 2s
        exit 0
    ;;
    *)
        echo "opcao nao encontrada"
    ;;
esac