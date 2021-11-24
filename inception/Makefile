# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cshells <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/22 20:02:33 by cshells           #+#    #+#              #
#    Updated: 2021/11/22 20:02:35 by cshells          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include srcs/.env

DOCKER = cd srcs && sudo docker-compose -f ./docker-compose.yml

all:
	#cp -r srcs/mariadb/db/* $(DB_VOL)
	mkdir -p $(DB_VOL)
	mkdir -p $(WP_VOL)
	cd srcs && sudo docker-compose up --build

up:
	$(DOCKER) up -d

start:
	$(DOCKER) start

down:
	$(DOCKER) down

ps:
	$(DOCKER) ps

clean:
	sudo rm -rf $(WP_VOL) $(DB_VOL)

re: clean all
