#rc default
#/etc/init.d/mariadb setup
#/etc/init.d/mariadb start

chown -R mysql:mysql /var/lib/mysql
chmod 755 -R /var/lib/mysql
/etc/init.d/mariadb setup
/etc/init.d/mariadb start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS 'wp_db';"
mysql -u root -e "CREATE USER  IF NOT EXISTS 'cshells'@'%' IDENTIFIED BY '12345';"
mysql -u root -e "CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'root';"
#mysql  -e "CREATE USER 'adminwp'@'localhost' IDENTIFIED BY 'adminwp';"
mysql -u root -e "GRANT ALL PRIVILEGES ON 'wp_db'.* TO 'cshells'@'%' WITH GRANT OPTION;"
mysql -u root -e "GRANT ALL PRIVILEGES ON 'wp_db'.* TO 'root'@'%' WITH GRANT OPTION;"
mysql -u root -e "UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='cshells';"
mysql -u root -e "FLUSH PRIVILEGES;"

exec "$@"







#/etc/init.d/mariadb start
#
#mysql -u root
#CREATE DATABASE wp_db;
#CREATE USER 'cshells'@'%' IDENTIFIED BY '12345';
#GRANT ALL PRIVILEGES ON wp_db.* TO 'cshells';
#FLUSH PRIVILEGES;
#mysql exit;
##MYSQL_SCRIPT
#
##mysql -u root wp_db < /wp_db.sql
##/etc/init.d/mariadb stop
#
##sleep 3
#
#/usr/bin/mysqld_safe









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
