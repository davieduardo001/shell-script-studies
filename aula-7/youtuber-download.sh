#!/usr/bin/env bash

#baixe videos no youtube
#e converte para um formato de audio

#======VARIAVEIS-DE-PROGRAMA=======
# 64k, 128k, 256k, 320k.
qualidade="320k"

#best, aac, vorbis, m4a, opus, wav, mp3.
formato="mp3"

#=======TESTES-INICIAIS============
[ "$UID" -eq "0" ] && { echo "nao e indicado rodar esse programa como root"; exit 1 }

#PROGRAM=====================

youtube-dl -f bestaudio "$@"
