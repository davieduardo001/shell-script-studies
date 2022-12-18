#!/usr/bin/env bash

#variavel nula executa o texto
var1=""
echo "${var1:-A variavel esta nula}"

#variavel nula recebe o texto
var2=""
echo "variavel recebeu isso: ${var2:=essa era nula}"

#variavel nula retorna um erro
var3=""
#echo "e o erro foi... ${var3:?DEU ERRO AQUII}"

#varivel recebe o que foi passado
var4="teste"
echo "a variavel que tem algo recebeu ${var4:+teste teste teste...}"
echo "$var4"