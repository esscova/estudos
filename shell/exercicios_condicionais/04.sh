#!/usr/bin/env bash

# Escreva um script que verifique se um arquivo chamado `dados.txt` existe no diretório atual.

if [ -e "dados.txt" ]; then
	echo "Arquivo dados.txt existe."
else
	echo "Arquivo dados.txt não existe."
fi

[ -e "dados.txt" ] && echo "Arquivo dados.txt encontrado" || echo "Arquivo dados.txt não existe"
