#!/usr/bin/env bash

USUARIOS=("usuario1" "usuario2" "usuario3")

for usuario in "${USUARIOS[@]}"; do
	echo "Configurando informações para $usuario"
	info_valida=false

	while [ $info_valida = false ]; do
		read -p "Digite o email para $usuario: " email
		if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$ ]]; then
			echo "Email '$email' registrado para $usuario."
			info_valida=true
		else
			echo "Email inválido tente novamente"
		fi
	done
done
