#!/bin/sh

sed -i -e 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g' /etc/php/7.3/fpm/pool.d/www.conf
wp core download --allow-root --path=/var/www/wordpress/
wp config create --allow-root \
				--dbname=wp_db \
				--dbuser=cshells \
				--dbhost=mariadb \
				--dbpass=12345\
				--path=/var/www/wordpress/
sleep 10
wp core install --allow-root \
				--url=cshells.42.fr \
				--title=inception \
				--admin_user=supervisor \
				--admin_password=superpassword \
				--admin_email=supervisor@esuper.com \
				--path=/var/www/wordpress/

wp user create user1 askhab@mail.com --role=author --user_pass="12345" --allow-root --path=/var/www/wordpress/

/usr/sbin/php-fpm7.3 -F --nodaemonize




#/usr/sbin/php-fpm7 -F -R --nodaemonize
#/usr/sbin/php-fpm7.3 -F

#if ! $(wp core is-installed --allow-root); then
#	wp config shuffle-salts --allow-root
#    wp core install		\
#        --allow-root    \
#	--path=/var/www/wordpress	\
#        --url=https://cshells.42.fr \
#        --title=CSHELLS_INCEPTION    \
#        --admin_user=cshells     \
#        --admin_password=12345 \
#        --admin_email=cshells@student.21-school.ru
#	wp user create --allow-root frariel frariel@student.21-school.ru --user_pass=12345
#fi



#exec "$@"


