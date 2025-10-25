# 🚀 Desafio Backend BTG Pactual 🚀

## 📝 Descrição do Projeto

Este projeto é a solução do **Desafio Backend BTG Pactual** oferecido pela BTG Pactual.  
Trata-se de uma **aplicação** para **processar pedidos** e **gerar relatório**, com **integração MongoDB** como banco de dados NoSQL e **RabbitMQ** para criação de filas, responsável por gerenciar pedidos de clientes.

O sistema é capaz de:

- 📨 Receber eventos de pedidos através de **fila RabbitMQ** (`btg-pactual-order-created`)
- 💾 Persistir os pedidos no **MongoDB**, incluindo itens e valores totais
- 📄 Consultar pedidos por cliente, com suporte a **paginação**
- 📊 Calcular o **total de pedidos** de um cliente utilizando **agregações MongoDB**

O principal objetivo é demonstrar a capacidade de:

- Processar **pedidos recebidos de uma fila** (RabbitMQ)
- Persistir os dados de pedidos de forma estruturada no **MongoDB**
- Gerar **relatórios de pedidos por cliente**, com total acumulado
- Construir uma **API RESTful** para consultar os pedidos

O projeto também serve para demonstrar habilidades em:


- ⚡ Spring Boot
- 🗄️ Spring Data MongoDB
- 🐇 Spring AMQP (RabbitMQ)
- ☕ Java 21
- 🌐 Design de APIs RESTful

---

## 🛠️ Tecnologias Utilizadas

| Tecnologia             | Emoji |
|------------------------|-------|
| Java 21                | ☕ |
| Spring Boot            | ⚡ |
| Spring Data MongoDB    | 🗄️ |
| Spring AMQP (RabbitMQ) | 🐇 |
| Maven                  | 📦 |
| Docker                 | 🐳 |
| IntelliJ IDEA          | 💡 |

---

## 📁 Estrutura do Projeto

- `controller/` → endpoints REST para consulta de pedidos
- `service/` → regras de negócio, cálculo de totais e manipulação de pedidos
- `listener/` → escuta eventos da fila RabbitMQ
- `entity/` → modelos do MongoDB (`OrderEntity`, `OrderItem`)
- `repository/` → interface de acesso a dados MongoDB
- `config/` → configurações do RabbitMQ e JSON message converter
- `listener/dto/` → objetos de transporte de eventos recebidos do RabbitMQ

---

## ⚙️ Configuração

### 🔹 Pré-requisitos

- ☕ Java 17 ou superior
- 📦 Maven
- 🐳 Docker (opcional, para MongoDB e RabbitMQ)
- 🌐 Git

### 🔹 Variáveis de Configuração

No arquivo `application.properties`:


