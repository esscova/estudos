#!/usr/bin/env bash

# Escreva um script que verifique se dois números armazenados em variáveis são iguais ou diferentes.

numero1=10
numero2=20

if [ "$numero1" -eq "$numero2" ]; then
	echo "Os números são iguais"
else
	echo "Os números são diferentes"
fi
