#
# Gnu Compiler Collection: g++ Development tools
#

FROM ubuntu

MAINTAINER Nikola SLAVNIC

RUN apt-get update --fix-missing

RUN apt-get update -y g++
RUN apt-get update -y make
RUN apt-get update -y xutils-dev
RUN apt-get update -y libtool
RUN apt-get update -y automake

RUN apt-get update -y libzip-dev
RUN apt-get update -y libcurl4-openssl-dev
RUN apt-get update -y libxml2-dev

RUN apt-get update -y python
RUN apt-get update -y wget
RUN apt-get update -y pandoc
RUN apt-get update -y whois
RUN apt-get update -y traceroute
RUN apt-get update -y unzip
RUN apt-get update -y git
RUN apt-get update -y curl

RUN apt-get update -y vim


#
# HElib
#

ENV LD_LIBRARY_PATH /libfhe/
RUN apt-get update -y libboost-all-dev

VOLUME ["/fhe/","/libfhe/"]
ENTRYPOINT["/fhe/Op_x"]
CMD /bin/bash

EXPOSE 80
