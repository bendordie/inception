FROM debian:buster
EXPOSE 3306
RUN apt-get update && apt-get install mariadb-server -y
COPY ./mydb.cnf /etc/mysql/mariadb.conf.d/
COPY ./begin.sh /
RUN chmod 777 ./begin.sh
CMD ./begin.sh












#FROM alpine:3.11.7
#
#RUN apk update && apk upgrade
#RUN apk add mariadb mariadb-client openrc bash;
#
#RUN mkdir "/run/mysqld" && chown -R mysql /run/mysqld
#
#COPY ./mydb.cnf /etc/mysql/my.cnf
#COPY ./begin.sh ./tmp
#RUN chmod 777 ./tmp/begin.sh
#
#EXPOSE 3306
#
#CMD ./tmp/begin.sh









#RUN apk update && apk upgrade
#RUN apk add openrc mysql mysql-client bash
#RUN apk add rsync
#
#
#RUN mkdir -p /data/mysql
#RUN chmod +x /data
#
#COPY wp_db.sql /
#RUN chmod +x /wp_db.sql
#
#RUN mkdir -p /etc/mysql/mysql.conf.d
#COPY ./mydb.cnf /etc/mysql/my.cnf
#
#COPY ./begin.sh ./tmp
#RUN chmod 777 ./tmp/begin.sh
#
#EXPOSE 3306
#
#CMD ./tmp/begin.sh