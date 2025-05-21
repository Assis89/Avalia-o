# Meu Site Docker

Ess projeto demonstrar a criação e execução de uma aplicação web simples utilizando **Docker** e o servidor **Nginx**. A aplicação serve uma página HTML básica que explica os conceitos principais do Docker.

## Objetivo do Projeto

O objetivo deste projeto é mostrar como usar o Docker para criar um ambiente de hospedagem web com Nginx. A página HTML contém:
- Texto explicativo sobre o Docker,
- Estilização com **CSS básico**,
- Uma imagem sobre o Docker (opcional).

## Comandos Utilizados

1. **Construir a imagem Docker**:

    Para construir a imagem Docker a partir do `Dockerfile`, execute o comando abaixo:

    ```bash
    docker build -t meu-site-docker .
    ```

    - `docker build`: Comando para construir a imagem.
    - `-t meu-site-docker`: Cria uma tag para a imagem com o nome `meu-site-docker`.
    - `.`: Indica o diretório atual como contexto da construção.

2. **Rodar o container**:

    Para rodar o container com a imagem criada e mapear a porta 8080 do host para a porta 80 do container, execute:

    ```bash
    docker run -d -p 8080:80 --name container-meu-site meu-site-docker
    ```

    - `docker run`: Comando para rodar o container.
    - `-d`: Executa o container em modo "detached" (em segundo plano).
    - `-p 8080:80`: Mapeia a porta 80 do container para a porta 8080 do host.
    - `--name container-meu-site`: Define um nome para o container.
    - `meu-site-docker`: O nome da imagem que foi construída.

## Como Executar o Container

1. **Clone o repositório**:

    Clone este repositório para o seu ambiente local:

    ```bash
    git clone https://github.com/usuario/meu-site-docker.git
    cd meu-site-docker
    ```

2. **Construir a imagem Docker**:

    No diretório do projeto, execute o seguinte comando para construir a imagem Docker:

    ```bash
    docker build -t meu-site-docker .
    ```

3. **Rodar o container**:

    Após construir a imagem, execute o comando para rodar o container:

    ```bash
    docker run -d -p 8080:80 --name container-meu-site meu-site-docker
    ```

4. **Acesse a página no navegador**:

    Abra o navegador e vá até o seguinte endereço para ver a página servida pelo Nginx:

    ```
    http://localhost:8080
    ```

## Estrutura de Diretórios

A estrutura do projeto é a seguinte:

│
├── index.html # Página HTML com informações sobre Docker
├── style.css # Arquivo CSS básico para estilização
├── imagem-docker.png # Imagem (opcional)
├── Dockerfile # Dockerfile para construir a imagem
└── README.md # Documentação do projeto
