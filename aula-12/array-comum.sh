#!/usr/bin/env bash

#array[indice]="valores"

#nome1="batata"
#nome2="maca"
#nome3="bergamota"
#nome4="manga"
#nome5="jabuticaba"
#nome6="caju"

#=FORMA 1============
#frutas[1]="batata"
#frutas[2]="maca"
#frutas[3]="bergamota"
#frutas[4]="manga"
#frutas[5]="jabuticaba"
#frutas[6]="caju"

#echo "${nome[1]} ${nome[2]}"

#=FORMA 2=============
#no ZSH a array comeca em 1, em BASH 0, no padrao POSIX nem existe
nome=("batata" "maca" bergamota manga jabuticaba caju)

echo "${nome[0]}" #${nome[*]} IMPRIME TUDO ${nome[@]} IMPRIME TUDO
