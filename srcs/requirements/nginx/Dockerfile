FROM debian:buster

RUN apt -y update
RUN apt -y install nginx
RUN apt -y install openssl
COPY ./tools/default /etc/nginx/sites-available/default
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=Nice/L=Nice/O=42 School/OU=romain/CN=localhost"

CMD ["nginx", "-g", "daemon off;"]
