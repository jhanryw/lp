# Usa a imagem leve do Nginx baseada em Alpine Linux
FROM nginx:alpine

# Remove os arquivos padrão do Nginx para não dar conflito
RUN rm -rf /usr/share/nginx/html/*

# Copia a configuração do Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia todo o conteúdo da sua pasta local para a pasta do servidor
COPY . /usr/share/nginx/html

# Expõe a porta 80 (padrão web)
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]
