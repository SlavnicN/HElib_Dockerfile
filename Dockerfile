#
# Gnu Compiler Collection: g++ Development tools
#

FROM ubuntu

MAINTAINER Nikola SLAVNIC slavnic.n@gmail.com

RUN apt-get update --fix-missing

RUN apt-get install -y g++
RUN apt-get install -y make
RUN apt-get install -y xutils-dev
RUN apt-get install -y libtool
RUN apt-get install -y automake

RUN apt-get install -y libzip-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y libxml2-dev

RUN apt-get install -y python
RUN apt-get install -y wget
RUN apt-get install -y pandoc
RUN apt-get install -y whois
RUN apt-get install -y traceroute
RUN apt-get install -y unzip
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y tcpdump

RUN apt-get install -y vim


#
# HElib
#

ENV LD_LIBRARY_PATH /libfhe/
RUN apt-get install -y libboost-all-dev

VOLUME ["/fhe/","/libfhe/"]
ENTRYPOINT ["/fhe/Op_x"]
CMD /bin/bash

EXPOSE 80
