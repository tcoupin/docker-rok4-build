#Rok4 build env
FROM debian:wheezy
MAINTAINER Thibault Coupin <thibault.coupin@ign.fr>

RUN mkdir /rok4-build

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y build-essential gettext nasm automake cmake

WORKDIR /rok4-build
ADD buildRok4.sh /rok4-build/buildRok4.sh
CMD /bin/bash /rok4-build/buildRok4.sh
