FROM debian:buster
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y default-mysql-server procps bash

EXPOSE 3306

COPY ./begin.sh ./tmp
RUN chmod 777 ./tmp/begin.sh

CMD ["/tmp/begin.sh"]












# FROM alpine:3.11.7
#
# RUN apk update && apk upgrade
# RUN apk add openrc mysql mysql-client bash
# RUN apk add rsync
#
#
# RUN mkdir -p /data/mysql
# RUN chmod +x /data
#
# COPY wp_db.sql /
# RUN chmod +x /wp_db.sql
#
# RUN mkdir -p /etc/mysql/mysql.conf.d
# COPY ./mydb.cnf /etc/mysql/my.cnf
#
# COPY ./begin.sh ./tmp
# RUN chmod 777 ./tmp/begin.sh
#
# EXPOSE 3306
#
# CMD ./tmp/begin.sh