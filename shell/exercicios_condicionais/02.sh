#!/usr/bin/env bash

# Escreva um script que determine se um número armazenado em uma variável é positivo, negativo ou zero.

numero=-2

if [ "$numero" -gt 0 ]; then
	echo "O número é positivo"
elif [ "$numero" -lt 0 ]; then
	echo "O número é negativo"
else
	echo "O número é nulo ou zero"
fi
