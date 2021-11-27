#!/usr/bin/env bash

# Config
mv /tools_dir/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Права
chown -R mysql:mysql /var/lib/mysql
chmod 755 -R /var/lib/mysql

#
mysql_install_db --user=mysql --ldata=/var/lib/mysql
service mysql start

db_name='wp_db'
username='cshells'
password='dbpass'
hostname='localhost'

# WordPress database create and add users
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $db_name;"
mysql -u root -e "CREATE USER  IF NOT EXISTS '$username'@'%' IDENTIFIED BY '$password';"
mysql -u root -e "CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'root';"
#mysql  -e "CREATE USER 'adminwp'@'localhost' IDENTIFIED BY 'adminwp';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $db_name.* TO '$username'@'%' WITH GRANT OPTION;"
mysql -u root -e "GRANT ALL PRIVILEGES ON $db_name.* TO 'root'@'%' WITH GRANT OPTION;"
mysql -u root -e "UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='$username';"
mysql -u root -e "FLUSH PRIVILEGES;"

#mysql < create_db.sql

exec "$@"




















#echo "CREATE DATABASE wp_db;" > setup.sql
#echo "CREATE USER 'cshells'@'%' IDENTIFIED BY '12345';" >> setup.sql
#echo "GRANT ALL PRIVILEGES ON wp_db.* TO 'cshells';" >> setup.sql
#echo "FLUSH PRIVILEGES;" >> setup.sql
#
#service mysql start && mysql < setup.sql
#rm -f setup.sql
#/usr/bin/mysqld_safe














#openrc default
#/etc/init.d/mariadb setup
#rc-service mariadb start
## echo "CREATE DATABASE wp_db;" | mysql -u root --skip-password
#echo "GRANT ALL PRIVILEGES ON *.* TO 'cshells'@'%' IDENTIFIED BY '12345' WITH GRANT OPTION;" | mysql -u root --skip-password
#echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
#rc-service mariadb stop
#/usr/bin/mysqld_safe  --datadir="/var/lib/mysql"















#rc default
#/etc/init.d/mariadb setup
#/etc/init.d/mariadb start

#echo "CREATE DATABASE wp_db;" > setup.sql
#echo "CREATE USER 'cshells'@'%' IDENTIFIED BY '12345';" >> setup.sql
#echo "GRANT ALL PRIVILEGES ON wp_db.* TO 'cshells';" >> setup.sql
#echo "FLUSH PRIVILEGES;" >> setup.sql
#
#service mysql start && mysql < setup.sql
#rm -f setup.sql
#/usr/bin/mysqld_safe












#chown -R mysql:mysql /var/lib/mysql
#chmod 755 -R /var/lib/mysql
#/etc/init.d/mariadb setup
#/etc/init.d/mariadb start
#
#mysql -u root -e "CREATE DATABASE IF NOT EXISTS 'wp_db';"
#mysql -u root -e "CREATE USER  IF NOT EXISTS 'cshells'@'%' IDENTIFIED BY '12345';"
#mysql -u root -e "CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'root';"
##mysql  -e "CREATE USER 'adminwp'@'localhost' IDENTIFIED BY 'adminwp';"
#mysql -u root -e "GRANT ALL PRIVILEGES ON 'wp_db'.* TO 'cshells'@'%' WITH GRANT OPTION;"
#mysql -u root -e "GRANT ALL PRIVILEGES ON 'wp_db'.* TO 'root'@'%' WITH GRANT OPTION;"
#mysql -u root -e "UPDATE mysql.user SET plugin='mysql_native_password' WHERE user='cshells';"
#mysql -u root -e "FLUSH PRIVILEGES;"
#
#exec "$@"







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
