#!/usr/bin/env bash

#  arquivos .log no diretório
arquivos=$(ls *.log 2>/dev/null)

# arquivos .log
if [ -n "$arquivos" ]; then
    for arquivo in ./*.log; do
        if [ -f "$arquivo" ]; then
            # Renomeia o arquivo
            mv "$arquivo" "${arquivo%.log}.bak"
            echo "Renomeado: $(basename "$arquivo") para $(basename "${arquivo%.log}.bak")"
        fi
    done
else
    echo "Nenhum arquivo .log encontrado no diretório."
fi
