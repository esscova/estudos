#!/usr/bin/env bash

# Escreva um script que verifique qual dos dois números armazenados em variáveis é o maior.

numero1=1
numero2=2

if [ "$numero1" -gt "$numero2" ]; then
	echo "$numero1 é maior que $numero2"
elif [ "$numero1" -lt "$numero2" ]; then
	echo "$numero2 é maior que $numero1"
else
	echo "Números iguais"
fi
