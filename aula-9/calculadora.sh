#!/usr/bin/env sh

#verificacoes=======
(("$UID" == 0)) && { echo "usuario root, nao!"; exit 1; }

#funcoes============
function menu()
{
	clear
	echo "----------------"
	echo "1) '+' soma"
	echo "2) '-' subtracao"
	echo "3) '/' dividir"
	echo "4) '*' multiplicar"
	echo "5) exit"
	echo "----------------"
	read -p "escolha uma opcao: " opcao

	case "$opcao" in
		"1") somar;;		#chamada de funcao
		"2") subtrair;;		#chamada de funcao
		"3") dividir;;		#chamada de funcao
		"4") multiplicar;;	#chamada funcao
		"5") exit 0;;
		*) 
			echo "favor escolher uma opcao (de 1 a 5)"
			sleep 2; menu;;
	esac
}

function somar(){
	read -p "valor 1: " val1
	read -p "valor 2: " val2

	if [ -z "$val1" ] || [ -z "$val2" ]; then
		echo "favor entrar com um numero"
		sleep 2
		menu				#volta para a funcao menu
	fi
	
	echo "$(("$val1" + "$val2"))"
	sleep 2s
	menu					#volta pra o menu
}

function subtrair(){
	read -p "valor 1: " val1
	read -p "valor 2: " val2

	if [ -z "$val1" ] || [ -z "$val2" ]; then
		echo "favor entrar com um numero"
		sleep 2
		menu				#volta para a funcao menu
	fi
	
	echo "$(("$val1" - "$val2"))"
	sleep 2s
	menu					#volta pra o menu
}

function multiplicar(){
	read -p "valor 1: " val1
	read -p "valor 2: " val2

	if [ -z "$val1" ] || [ -z "$val2" ]; then
		echo "favor entrar com um numero"
		sleep 2
		menu				#volta para a funcao menu
	fi
	
	echo "$(("$val1" * "$val2"))"
	sleep 2s
	menu					#volta pra o menu
}

function dividir(){
	read -p "valor 1: " val1
	read -p "valor 2: " val2

	if [ -z "$val1" ] || [ -z "$val2" ]; then
		echo "favor entrar com um numero"
		sleep 2
		menu				#volta para a funcao menu
	fi
	
	echo "$(("$val1" / "$val2"))"
	sleep 2s
	menu					#volta pra o menu
}

menu						#chamando main
