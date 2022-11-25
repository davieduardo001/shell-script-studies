#!/usr/bin/env sh

read -p "qual o seu nome? " nome

case "$nome" in
    davi)
        echo "nome e davi"
    ;;
    eduardo|Eduardo) #OU logico no case
        echo "nome e eduardo"
    ;;
    ricardo)
        echo "nome e ricardo"
    ;;
    *)
        echo "nome nao encontrado"
    ;;
esac