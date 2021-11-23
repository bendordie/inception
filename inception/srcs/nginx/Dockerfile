# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cshells <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/22 20:06:55 by cshells           #+#    #+#              #
#    Updated: 2021/11/22 20:06:58 by cshells          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.11.7

RUN apk update && apk upgrade
RUN apk add nginx
RUN apk add openssl libc6-compat

RUN openssl req -newkey rsa:2048 -x509 -sha256 -days 30 -nodes -out /etc/ssl/certs/certificate.crt -keyout /etc/ssl/certs/public.key -subj "/C=RU/ST=TATARSTAN/L=KAZAN/O=Security/OU=IT Department/CN=localhost"

COPY ./nginx_config ./etc/nginx/conf.d/default.conf
#COPY ../wordpress/* /var/www/html/wordpress/


RUN mkdir -p /data/www/html
RUN mkdir -p /run/nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
