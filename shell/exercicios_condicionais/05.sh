#!/usr/bin/env bash

#  Escreva um script que verifique se um diretório chamado `backup` existe no diretório atual.

[ -d 'backup'  ] && echo 'O diretório backup existe' || echo 'Não existe o diretório backup'
