#!/usr/bin/env bash

#trabalhando com o camando ping
#em um ciclo for

for link in "google.com" "slackjeff.com.br"; do
	ping -c 2 "$link"
done
