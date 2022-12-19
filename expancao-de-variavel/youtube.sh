#!/usr/bin/env bash

if [[ "$1" = "-e"  ]]; then
  shift
  pesquisa="$@"
  pesquisa="${pesquisa// /+}"

  firefox https://www.youtube.com/results?search_query="$pesquisa"
fi
