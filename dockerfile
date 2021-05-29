FROM ubuntu:20.04

RUN apt update && apt install -y tzdata

RUN ln -fs /usr/share/zoneinfo/America/Santiago /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

RUN DEBIAN_FRONTEND=noninteractive apt install nano \
    curl php7.4 nginx mysql-server -y --no-install-recommendsdoc






    