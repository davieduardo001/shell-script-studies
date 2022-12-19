#!/usr/bin/env bash

var="teste de variavel com multiplas de strings"

#retorna o numero de char de um string
echo "${#var}"

#corta o inicio da string com o label passado
echo "${var#teste}"

#retorna de acordo com o parametro passado
echo "${var:6-10}"

#substitui um parametro por outro
echo "${var/teste/nah}"
#substitui TODAS as ocorrencias
echo "${var//de /yep }"
