#!/usr/bin/env sh

echo -e \
"
===========BEM VINDO===========
1) abrir browser
2) abrir editor
3) abrir musica
4) sair
=======================================\n"

read -p "Selecione um programa: " programa

case "$programa" in
    1) 
        [ $(type -p chromium-browser) ] || {echo "chromium nao exite no sistema."; exit 1;}
    ;;
    2) flatpak run com.vscodium.codium;;
    3) flatpak run com.spotify.Client;;
    4) exit 0;;
    *) echo nao existe;;
esac