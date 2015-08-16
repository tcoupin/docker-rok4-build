#Rok4 build env
FROM debian:wheezy
MAINTAINER Thibault Coupin <thibault.coupin@ign.fr>

#Get build env
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y build-essential gettext nasm automake cmake

#Add build script
USER 1000
RUN mkdir /rok4-tobuild
WORKDIR /rok4-tobuild
ADD buildRok4.sh /buildRok4.sh
CMD /bin/bash /buildRok4.sh
