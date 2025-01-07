#!/usr/bin/env bash

read -p "Insira os diretórios separados por espaço: " -a diretorios

for dir in "${diretorios[@]}"; do
	test -d "$dir" && echo "Diretório '$dir' já existe" || mkdir -p "$dir"
done
