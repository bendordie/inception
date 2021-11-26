/etc/init.d/mariadb start

mysql -u root
CREATE DATABASE wp_db;
CREATE USER 'cshells'@'%' IDENTIFIED BY '12345';
GRANT ALL PRIVILEGES ON wp_db.* TO 'cshells';
FLUSH PRIVILEGES;
mysql exit;
#MYSQL_SCRIPT

#mysql -u root wp_db < /wp_db.sql
#/etc/init.d/mariadb stop

#sleep 3

/usr/bin/mysqld_safe









#rc default
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
