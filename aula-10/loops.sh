#!/usr/bin/env sh

#while: enquanto status de saida 0 fazer...
#while [ "1" = "1" ]; do
	#echo "infinito...."
	#echo "aperte ctrl+c para parar"
	#sleep 1s
#done

val="0"
while [ "$val" -lt "5" ]; do #pode colocar -eq
	val=$(($val+1))
	echo "o valor e: $val"
done
