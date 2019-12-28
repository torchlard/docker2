FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
RUN add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.4/ubuntu bionic main'

RUN apt-get update
RUN apt-get install -y mariadb-server galera-4 mariadb-client libmariadb3 mariadb-backup mariadb-common

COPY my.cnf /etc/mysql/my.cnf
RUN /bin/bash -c 'chmod 644 /etc/mysql/my.cnf'
RUN mkdir /run/mysqld
RUN /bin/bash -c 'chmod 777 /run/mysqld'
RUN /bin/bash -c 'chmod 777 -R /var/lib/mysql'
