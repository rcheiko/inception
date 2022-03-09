FROM debian:buster
RUN apt -y update
RUN apt -y install nginx
RUN apt -y install openssl
COPY default /etc/nginx/sites-available/default
COPY run_cmd.sh ./
CMD bash run_cmd.sh
