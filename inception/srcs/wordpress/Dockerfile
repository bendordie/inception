# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cshells <cshells@student.21-school>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/04 17:08:10 by cshells           #+#    #+#              #
#    Updated: 2021/02/27 15:28:24 by cshells          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get install -y php7.3-fpm php-mysql php-mbstring vim wget
COPY ./www.conf /etc/php/7.3/fpm/pool.d

ADD https://wordpress.org/latest.tar.gz /var/www/
RUN cd /var/www && tar -xzvf latest.tar.gz
RUN rm -f /var/www/latest.tar.gz

COPY ./wp-config.php /var/www/wordpress/
COPY ./begin.sh /

ADD ["https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar", "./"]
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir ./run/php/
CMD ./usr/sbin/php-fpm7.3 -F

ENTRYPOINT ["./begin.sh"]













# FROM alpine:3.11.7
#
# RUN apk update && apk upgrade
# RUN apk add nginx wget rsync libc6-compat
# RUN apk add --no-cache php7 php7-fpm php7-json php7-mysqli php7-curl php7-gd php7-intl php7-mbstring php7-soap php7-xml php7-xmlrpc php7-zip php7-iconv php7-phar php7-session
#
# RUN wget -c https://wordpress.org/latest.tar.gz
# RUN tar -xvf latest.tar.gz && rm -rf latest.tar.gz
# # RUN mkdir -p /var/www/html
# RUN mv wordpress /var/www/
#
# # COPY ./* /var/www/html/
# COPY ./wp-config.php /var/www/wordpress/
# COPY ./begin.sh /
# COPY ./php.ini /etc/php7/
# COPY www.conf /etc/php7/php-fpm.d/
#
# ADD ["https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar", "./"]
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp
#
# RUN chmod 777 /var/www/
# RUN chmod 777 /var/www/wordpress
# RUN chmod 777 /begin.sh
# RUN mkdir -p /run/nginx
# #RUN mkdir -p /var/run/php
#
# EXPOSE 9000
#
# CMD ["/begin.sh"]

# CMD ./tmp/begin.sh
