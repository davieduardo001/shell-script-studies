#para enviar a saida para algum lugar q nunca sera salvo:

#comando_com_saida_indesejada > /dev/null

arquivo_log="saida_do_err.txt"

if ls /homme >/dev/null 2>>"$arquivo_log"; then #usando o >&- 2>&-
	echo "funciounou!"
else
	echo "====$(date +%H:%M)====" >> "$arquivo_log"
	echo >> "$arquivo_log"
	echo "erro, verifique o arquivo no $arquivo_log"
fi
