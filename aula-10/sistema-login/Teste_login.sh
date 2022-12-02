#!/usr/bin/env sh

source ./login_senha.conf

function TestarLogin()
{
	total="1"

	while :; do
		[ "$total" -gt "3" ] && exit 2 || echo "tentativas $total/3"
		read -p "login: " _usr
		read -sp "senha: " _pass
		echo

		if [ "$_usr" = "$usuario" ] && [ "$_pass" = "$senha" ]; then
			break	
		else
			total=$(($total+1))	
			echo "algum dado foi errado"
			echo
		fi
	done

	echo "fazendo o login..."
	sleep 2s
	echo "login efetuado com sucesso!!"
}

