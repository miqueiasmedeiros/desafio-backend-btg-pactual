#!/bin/bash
set -e

# Caminho do docker-compose.yaml
COMPOSE_PATH="$(dirname "$0")/local/docker-compose.yaml"

# Função para subir MongoDB + RabbitMQ
function start_services() {
    echo "🔹 Subindo MongoDB e RabbitMQ..."
    sudo docker compose -f "$COMPOSE_PATH" up -d --build
    echo "✅ Containers iniciados!"
}

# Função para parar todos os containers
function stop_services() {
    echo "🛑 Parando containers..."
    sudo docker compose -f "$COMPOSE_PATH" down
    echo "✅ Containers parados!"
}

# Ver status dos containers
function status_services() {
    echo "ℹ️ Status dos containers:"
    sudo docker compose -f "$COMPOSE_PATH" ps
}

# Mostrar logs dos containers
function logs_services() {
    echo "📄 Logs em tempo real:"
    sudo docker compose -f "$COMPOSE_PATH" logs -f
}

# Função para rodar a aplicação Java
function start_app() {
    echo "🚀 Rodando Spring Boot..."
    cd "$(dirname "$0")"  # sobe para /home/miqueias/orderms
    ./mvnw spring-boot:run
}

# Menu interativo
while true; do
    echo
    echo "======================"
    echo "     Ordems Menu      "
    echo "======================"
    echo "1) Subir containers (MongoDB + RabbitMQ)"
    echo "2) Rodar Spring Boot"
    echo "3) Subir containers e rodar Spring Boot"
    echo "4) Parar containers"
    echo "5) Ver status containers"
    echo "6) Ver logs containers"
    echo "7) Sair"
    echo -n "Escolha uma opção: "
    read opcao

    case $opcao in
        1) start_services ;;
        2) start_app ;;
        3) start_services; start_app ;;
        4) stop_services ;;
        5) status_services ;;
        6) logs_services ;;
        7) echo "Saindo..."; exit 0 ;;
        *) echo "❌ Opção inválida!" ;;
    esac
done
