#!/usr/bin/env sh

#variables===========
user="ed"
pass="12345"
#====================

#verificacoes========
read -p "Qual o user? " _user
read -sp "Qual a senha? " _pass
if [ "$_user" = "$user" ] && [ "$_pass" = "$pass" ]; then
	echo "login sendo efetuado..."
	sleep 2s
else
	echo "usuario ou senha invalidos"
fi