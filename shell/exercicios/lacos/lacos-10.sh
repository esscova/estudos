#!usr/bin/env/ bash

ARQUIVO_COMANDOS="comandos.txt"
ARQUIVO_ERROS="erros.log"

# Limpa o arquivo de erros antes de iniciar
> "$ARQUIVO_ERROS"

# Lê o arquivo linha por linha
while IFS= read -r comando
do
    # Verifica se a linha não está vazia
    if [ -z "$comando" ]; then
        continue
    fi

    echo "Executando: $comando"
    # Executa o comando e redireciona os erros para o arquivo de log
    if ! eval "$comando" 2>> "$ARQUIVO_ERROS"; then
        echo "Erro ao executar: $comando" >> "$ARQUIVO_ERROS"
        echo "Erro registrado para o comando: $comando"
    else
        echo "Comando '$comando' executado com sucesso."
    fi
done < "$ARQUIVO_COMANDOS"

echo "Execução dos comandos concluída. Verifique '$ARQUIVO_ERROS' para erros."
