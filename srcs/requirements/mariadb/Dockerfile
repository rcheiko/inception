FROM debian:buster

RUN apt -y update
RUN apt -y install mariadb-server

COPY ./tools/run_cmd.sh ./
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/data.sql ./

CMD bash run_cmd.sh
