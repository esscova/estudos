#!usr/bin/env bash

# Escreva um script que determine se um número armazenado em uma variável é par ou ímpar.

numero=7

test $((numero % 2)) -eq 0 && echo "O número: $numero, é par." || echo "O número: $numero, é ímpar"
