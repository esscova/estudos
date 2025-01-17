# Ambiente para react 

IMAGE_NAME=node:22.12-alpine
CONTAINER_NAME=react-dev-container
PORT=5173

# tarefa padrão 
.PHONY: all
all: react-dev

# iniciar o container Docker para desenvolvimento?
react-dev:
	docker run -it --name $(CONTAINER_NAME) -v $(PWD):/workspace -w /workspace --rm -p $(PORT):$(PORT) $(IMAGE_NAME) sh

# parar e remover o container se ainda estiver rodando
stop:
	docker stop $(CONTAINER_NAME) && docker rm $(CONTAINER_NAME)
