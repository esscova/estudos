#!/usr/bin/env bash

read -p "Digite um número para calcular a fatorial: " numero

if ! [[ "$numero" =~ ^[0-9]+$ ]]; then
	echo "Por favor, insira um número inteiro não negativo."
	exit 1
fi

fatorial=1

for (( i=2; i<=numero; i++ )); do
	fatorial=$((fatorial*i))
done

echo "A fatorial de $numero é $fatorial."
