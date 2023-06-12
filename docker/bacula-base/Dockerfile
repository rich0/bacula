FROM ubuntu:jammy

MAINTAINER Richard Freeman <rich@rich0.org>

LABEL org.opencontainers.image.source https://github.com/rich0/docker

ENV BACULA_VERSION 13.0.3

# get your key on: https://www.bacula.org/bacula-binary-package-download/
ENV BACULA_KEY 647031b8bc3ae

ENV EMAIL rich@rich0.org

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt dist-upgrade -y

RUN apt install software-properties-common gpg wget -y

RUN cd /tmp

RUN wget https://www.bacula.org/downloads/Bacula-4096-Distribution-Verification-key.asc

RUN apt-key add Bacula-4096-Distribution-Verification-key.asc

RUN add-apt-repository deb https://www.bacula.org/packages/647031b8bc3ae/debs/$BACULA_VERSION/ jammy main

RUN apt-get update

RUN apt-get install bacula-postgresql -y

RUN apt-get clean

RUN for i in `ls /opt/bacula/bin`; do ln -s /opt/bacula/bin/$i /usr/sbin/$i; done 
