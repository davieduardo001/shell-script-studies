#Operadores de aritimetica...
#
# ' + ' add
# ' - ' sub
# ' * ' multi
# ' / ' div
# ' % ' modulo
# ' ** ' exponenciacao

#Operadores relacionais
# ' == ' igual
# ' != ' diferente
# ' > ' maior
# ' < ' menor
# ' >= ' maior ou igual
# ' < ' menor
# ' <= ' menor ou igual

#Operadores de atrubuicao
# '=' atribui o valor de uma variavel
# '+=' incrementa a variavel
# '-=' decrementa a variavel
# '++' incrementa em 1
# '--' decrementa em 1
# '%=' resto da dividao por uma constante

#Concatenando aritimetica
# (()) retorna os status de saida {retornando 0 ou 1}
# $(()) retona o valor da aritimetica encapsulado
teste=$(($UID == 0)) #testa o usuario
echo "$teste"

soma=$((2+2))
echo "$soma"
