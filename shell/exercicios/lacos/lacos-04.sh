#!/usr/bin/env bash

# verifica se um argumento foi passado para o script
if [ -z "$1" ]; then
    echo "Erro: Nenhum nome de processo fornecido."
    echo "Uso: $0 <nome_do_processo>"
    exit 1
fi

# nome do processo que você quer verificar
processo="$1"

# verifica a cada 10 segundos se o processo está em execução
while true; do
    # verifica se o processo está em execução
    if pgrep -x "$processo" > /dev/null; then
        echo "O processo '$processo' está em execução."
        break  # para o laço se o processo for encontrado
    else
        echo "Processo '$processo' não encontrado. Verificando novamente em 10 segundos..."
        sleep 10  # espera 10 segundos antes de verificar novamente
    fi
done
