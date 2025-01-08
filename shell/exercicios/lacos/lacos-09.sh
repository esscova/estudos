#!/usr/bin/env bash

LIMITE=80

while true; do
    # Captura o uso de memória com precisão
    USO_MEMORIA=$(free | grep Mem | awk '{print $3/$2 * 100.0}' | tr -d '[:space:]')
    
    # Substituir vírgula por ponto
    USO_MEMORIA=$(echo $USO_MEMORIA | sed 's/,/./')

    # Remover a parte decimal (arredondar para o inteiro)
    USO_MEMORIA=${USO_MEMORIA%.*}

    # Verificar se o valor de USO_MEMORIA é numérico
    if ! [[ "$USO_MEMORIA" =~ ^[0-9]+$ ]]; then
        echo "Erro ao calcular o uso de memória. Valor obtido: '$USO_MEMORIA'."
        exit 1
    fi

    # Condicional para alertar se ultrapassar o limite
    if [ $USO_MEMORIA -gt $LIMITE ]; then
        echo "Alerta: Uso de memória em $USO_MEMORIA% ultrapassou o limite de $LIMITE%."
    else
        echo "Uso de memória atual: $USO_MEMORIA%."
    fi

    # Aguardar 5 segundos antes de verificar novamente
    sleep 5
done
