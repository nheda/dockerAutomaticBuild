FROM ubuntu:14.04
MAINTAINER nehaheda@in.ibm.com

RUN apt-get update

RUN apt-get install apache2 -y

RUN apt-get install curl -y

ADD pages/neha.html /var/www/html/

EXPOSE 80

ENTRYPOINT service apache2 restart && /bin/bash

