FROM debian:stretch
LABEL maintainer="Hexus Developers <dev@hexus.org>"
LABEL description="Dockerised HexusCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
