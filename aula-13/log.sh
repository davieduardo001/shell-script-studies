#!/usr/bin/env bash

arquivo_log="/tmp/log.txt"

#=======teste===========
[ ! -e "$arquivo_log"  ] && > /tmp/log.txt
