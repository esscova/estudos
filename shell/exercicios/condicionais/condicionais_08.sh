#!/usr/bin/env bash

# Escreva um script que verifique se uma variável string está vazia ou não.

texto=''

test -z texto  && echo 'nao vazia' || echo 'vazia'
