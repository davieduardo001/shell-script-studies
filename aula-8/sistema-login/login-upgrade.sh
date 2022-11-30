#!/usr/bin/env sh


#CHAMADA-DE-CONFIGURACAO===
source ./login_senha.conf #colocaria o diretorio
source ./Help.sh #adiciona um arquivo externo (chamado na linha 39)

#funcoes===================
function _login()
{
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
}

function _backup()
{
	echo "O arquivo de origem e: $2"
	echo "O arquivo de destino e: $3"
	#tar -cvf ${2}.tar $2
	#mv ${2}.tar $3
}

#opcoes-de-entrada=========
case $1 in
	-l|--login)
		_login #chama a funcao login
	;; 
	-h|--help)
		_help #chama a funcao externa _help do arquivo Help
	;; 
	
	-b|--backup)
		_backup "$@"
	;;

	*) echo "use a opcao -h, --help para ajuda"
esac
