#!/usr/bin/env bash

# Escreva um script que verifique se um arquivo chamado `log.txt` tem permissão de escrita.

test -w log.txt && echo $? || echo "arquivo: log.txt não foi encontrado! saída: $?"
