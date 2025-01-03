#!/usr/bin/env bash


for arquivo in ./*.txt
do
	test -f $arquivo \
	&& echo "Arquivo: $(basename "$arquivo")" \
	|| echo 'Nenhum arquivo .txt encontrado no diretório atual.'
done

