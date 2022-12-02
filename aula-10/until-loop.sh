#!/usr/bin/env sh

programa="geany"
until ps -e | grep "$programa"; do
	echo "programa n esta em execucao"
	sleep 1s
done
