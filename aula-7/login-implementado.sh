#!/usr/bin/env sh

#variaveis=================
cpf="00000000000"
senha="12345"
usuario="davi"
#==========================

#opcoes-de-entrada=========
case $1 in
	-l|--login)	
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
	;; #fecha login-block

	-h|--help)
		echo "Opcoes disponiveis:
		-l, --login (abrir programa com menu!)
		"
	;; #fecha o help block
	
	-b|--backup)
		echo "O arquivo de origem e: $2"
		echo "O arquivo de destino e: $3"
		#tar -cvf ${2}.tar $2
		#mv ${2}.tar $3
	;;

	*) echo "use a opcao -h, --help para ajuda"
esac
