#! /usr/bin/env bash

meu_nome="escova"
user=$(whoami)
mensagem="Bem vindo ao mundo do Shell"
numero_1=83
numero_2=17
soma=$((numero_1 + numero_2))

echo "Olá, $meu_nome $numero_1 ! $mensagem seu user é: $user - $soma "

