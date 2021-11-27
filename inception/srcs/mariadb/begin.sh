#!/bin/bash

sed -i "s/bind-ad/\#bind-ad/" "/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i "s/\#port  /port   /" "/etc/mysql/mariadb.conf.d/50-server.cnf"
if [ ! -d /var/lib/mysql/wordpress/ ]; then
service mysql start
echo "CREATE DATABASE IF NOT EXISTS wp_db;"| mysql -u root
echo "CREATE USER IF NOT EXISTS '$cshells'@'%' IDENTIFIED BY '12345';"| mysql -u root
echo "GRANT ALL PRIVILEGES ON wp_db.* TO 'cshells'@'%' WITH GRANT OPTION;"| mysql -u root
echo "FLUSH PRIVILEGES;"| mysql -u root
mysqladmin -u root password 12345
service mysql stop
else
mkdir /var/run/mysqld
mkfifo var/run/mysqld/mysqld.sock
touch /var/run/mysqld/mysqld.pid
chown -R mysql /var/run/mysqld
fi
chown -R mysql:mysql /var/lib/mysql

mysqld







##rc default
#/etc/init.d/mariadb setup
#/etc/init.d/mariadb start
#
#mysql -u root <<MYSQL_SCRIPT
#CREATE DATABASE wp_db;
#CREATE USER 'cshells'@'%' IDENTIFIED BY '12345';
#GRANT ALL PRIVILEGES ON *.* TO 'cshells';
#FLUSH PRIVILEGES;
#MYSQL_SCRIPT
#
##mysql -u root wp_db < /wp_db.sql
#/etc/init.d/mariadb stop
#
#sleep 3
#
#/usr/bin/mysqld_safe
