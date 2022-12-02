#!/usr/bin/env sh


#--chamada de conf----------
source ./login_senha.conf #colocaria o diretorio
source ./Help.sh #adiciona um arquivo externo (chamado na linha 39)
source ./Teste_login.sh #testa se o login sera efetuado com sucesso

#--funcoes main-------------
function _login()
{
	echo "======BEM VINDOS AO PROGRAMA======"
	TestarLogin #chamada da funcao ./Teste-login
}

function _backup()
{
	echo "O arquivo de origem e: $2"
	echo "O arquivo de destino e: $3"
	#tar -cvf ${2}.tar $2
	#mv ${2}.tar $3
}

#--MAIN---------------------
case $1 in
	-l|--login)
		_login		#chama a funcao login
	;; 
	-h|--help)
		_help		#chama a funcao externa _help do arquivo Help
	;; 
	
	-b|--backup)
		_backup "$@"
	;;

	*) echo "use a opcao -h, --help para ajuda"
esac
