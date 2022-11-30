#!/usr/bin/env sh

function parametros()
{
	[ -z "$1" ] && echo "variavel e nula" || echo "variavel nao e nula"
}

parametros "$@"
