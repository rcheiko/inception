service mysql start
echo "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};" | mysql
echo "grant all on ${MYSQL_DATABASE}.* to '${MYSQL_USER}'@'%' identified by '${MYSQL_PASSWORD}';" | mysql
echo "flush privileges;" | mysql

mysql wordpress < data.sql

service mysql restart

service mysql stop
mysqld_safe
