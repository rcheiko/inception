FROM debian:buster

RUN apt -y update
RUN	apt -y install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
RUN apt -y install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
RUN mkdir /var/www
RUN mkdir /var/www/html
RUN mkdir /var/www/html/wordpress
COPY ./tools/wordpress /var/www/html/wordpress

COPY ./tools/wp-config.php /var/www/html/wordpress/

COPY ./tools/www.conf ./etc/php/7.3/fpm/pool.d/
COPY ./tools/run_cmd.sh ./

CMD bash run_cmd.sh
