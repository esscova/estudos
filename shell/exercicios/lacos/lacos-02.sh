#!/usr/bin/env bash

acumulado=0

while [ $acumulado -le 100 ]
do
	read -p "Insira um número: " numero

	if [[ "$numero" =~ ^[0-9]+$ ]]; then
		acumulado=$((acumulado + numero))
		echo "Total: $acumulado"
	else
		 echo "Por favor insira um número válido"
	fi
done

echo "Total: $acumulado"
