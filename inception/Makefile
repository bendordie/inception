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
	mkdir -p $(DB_VOL)
	cp -r srcs/mariadb/mariadb-data/* $(DB_VOL)
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
	sudo docker system prune -a -f --volumes
	sudo docker system prune -a -f
	sudo rm -rf /home/${USER}/data/
	sudo rm -rf /home/${USER}/data/mariadb-data/
	sudo rm -rf /home/${USER}/data/wordpress-data/
	sudo docker volume prune -f   #####
	sudo docker stop $$(sudo docker ps -qa)
	sudo docker rm -f $$(sudo docker ps -qa)
	sudo docker rmi -f $$(sudo docker images -qa) #####
	sudo docker volume rm $$(sudo docker volume ls -q) #####
	sudo docker network rm $$(sudo docker network ls -q) 2>/dev/null
	sudo docker system prune -a --force

re: clean all