#!/usr/bin/env bash

IP_PROCURADO="192.168.0.100"
COUNT=0

if [[ ! -f access.log ]]; then
	echo "Arquivo de log não encontrado"
	exit 1
fi

while IFS= read -r linha; do
	if [[ "$linha" == *"$IP_PROCURADO"* ]]; then
		COUNT=$((COUNT+1))
	fi

done < access.log

echo "O IP '$IP_PROCURADO' aparece $COUNT vezes no access.log"
