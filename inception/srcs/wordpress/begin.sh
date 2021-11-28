#!/bin/sh

/usr/sbin/php-fpm7 -F -R --nodaemonize

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


