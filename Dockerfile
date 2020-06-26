FROM nginx:alpine
COPY ./src/nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080/tcp