#/usr/bin/env sh

# $0(indica o nome do programa), $1, $2, $3... $9... ${10}, ${11}; (o resto sao destinados para os parametros)
#EXEMPLO: PROGRAMA -b(parametro 1) pasta1(parametro 2) -d(parametro 3)...

echo "O nome do programa e: $0"
echo "O primeiro parametro passado foi: $1"
echo "O segundo parametro passado foi: $2"
echo "O terceiro parametro passado foi: $3"

echo "O oitavo parametro funcional foi: $8"

#echo "O parametro 1 e 4 foi: $14" #imprime o valor do parametro 1 e o numero 4 em sequencia
#echo "O parametro 14 foi: ${14}" #agora sim imprime o 14 parametro

#O OUTRO GRUPO E $#(numero total de paramentros) $*(todos os parametros concatenados) $@(todos os parametros concatenadas em strings diferentes)

#echo "O total de parametros foi: $#"
#echo "Os parametros em sequencia e: $*" #"a b c d e f g h..."
#echo "Os parametros em sequencia 'arrumados' e: $@" #"a" "b" "c" "d"...

##OUTRO TIPOS DE PARAMETROS
#* $$ numero de PID(processo) do script
#* $! numero de PID do ultimo processo aberto
#* $_ ultimo argumento do ultimo comando executado
#* $? mostra o codigo de retorno do ultimo comando

#while sleep 1s; do
#	echo "numero de PID: $$"
#done
