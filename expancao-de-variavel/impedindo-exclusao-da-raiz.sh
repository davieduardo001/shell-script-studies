#!/usr/bin/env bash

read -p "entre com um diretorio: " ENTRADA
ENTRADA="${ENTRADA:=nothing}"

rm -rf "/$ENTRADA"