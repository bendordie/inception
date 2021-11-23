openrc default
/etc/init.d/mariadb setup
/etc/init.d/mariadb start

mysql -u root <<MYSQL_SCRIPT
CREATE DATABASE wp_db;
CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON wp_db.* TO 'root';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

mysql -u root wp_db < /wp_db.sql
/etc/init.d/mariadb stop
/usr/bin/mysqld_safe --datadir="/var/lib/mysql"
