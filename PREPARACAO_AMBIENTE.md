# 🚀 Guia de Execução — Desafio Backend BTG Pactual

Bem-vindo(a)! Este guia explica como **rodar o projeto localmente** e **testar o endpoint de criação de pedidos**.  
O projeto utiliza **Docker** para facilitar a execução. 🐳

---

## 🧩 Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- 🐋 **Docker** e **Docker Compose**
- 💻 **Git** (para clonar o repositório)
- 🔧 **Terminal Linux ou WSL** (recomendado)

---

## 📦 1. Clonar o repositório

Abra o terminal e execute:

```bash
git clone https://github.com/miqueiasmedeiros/desafio-backend-btg-pactual.git
```
Depois, entre na pasta do projeto:

```bash
cd desafio-backend-btg-pactual
cd orderms
```

Execute o script para iniciar os containers:

```sh
./run-docker.sh
```
```bash
{
    "codigoPedido": 1001,
    "codigoCliente": 1,
    "itens": [
        {
            "produto": "lápis",
            "quantidade": 100,
            "preco": 1.10
        },
        {
            "produto": "caderno",
            "quantidade": 10,
            "preco": 1.00
        }
    ]
}
```