#!/bin/bash
set -e

# Caminho do docker-compose
COMPOSE_PATH="$(dirname "$0")/local/docker-compose.yaml"

# Nome da imagem
IMAGE_NAME="orderms-app"

echo "🔹 Verificando se o docker-compose existe..."
if [ ! -f "$COMPOSE_PATH" ]; then
  echo "❌ Arquivo docker-compose.yml não encontrado em: $COMPOSE_PATH"
  exit 1
fi

echo "🔹 Construindo e subindo os containers (app + MongoDB)..."
docker compose -f "$COMPOSE_PATH" up -d --build

echo
echo "✅ Aplicação rodando em: http://localhost:8080"
echo "✅ MongoDB disponível em: mongodb://localhost:27017"
echo
echo "Para ver logs: docker compose -f $COMPOSE_PATH logs -f"
