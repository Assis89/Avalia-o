# Usa imagem oficial do Nginx
FROM nginx:latest

# Define diretório de trabalho
WORKDIR /usr/share/nginx/html

# Remove a página padrão do Nginx
RUN rm -rf ./*

# Copia os arquivos do projeto para dentro do container
COPY index.html .
COPY style.css .
COPY imagem-docker.png .

# Expõe a porta 80
EXPOSE 80