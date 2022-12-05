#!/usr/bin/env bash

#menu com select

#select VARIAVEL "lista" "nome1" "nome2"; do
	#bloco de codigo	
#done


#VARIAVEIS ESPECIAIS PARA O LOOP SELECT PS3="selecione" 
#$REPLAY (dentro do case retorna apenas o numero)
select nome in "nome1" "nome2" "nome3" "sair"; do
	case "$REPLAY" in
		1) echo "voce selecionou o $nome";;
		2) echo "voce selecionou o nome $nome";;
		3) echo "voce selecionou o nome $nome";;
		4) exit 0;;
		*) echo "opa n aparece na lista";;
	esac
done

PS3="SELECIONE: "
select nome in "nome1" "nome2" "nome3" "sair"; do
	case "$nome" in
		nome1) echo "voce selecionou o $nome";;
		nome2) echo "voce selecionou o nome $nome";;
		nome3) echo "voce selecionou o nome $nome";;
		sair) exit 0;;
		*) echo "opa n aparece na lista";;
	esac
done
