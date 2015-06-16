#
# Gnu Compiler Collection: g++ Development tools
#

FROM ubuntu

MAINTAINER Nikola SLAVNIC

RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update --fix-missing

RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y g++
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y make
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y xutils-dev
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y libtool
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y automake

RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y libzip-dev
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y libcurl4-openssl-dev
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y libxml2-dev

RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y python
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y wget
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y pandoc
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y whois
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y traceroute
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y unzip
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y git
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y curl

RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y vim


#
# HElib
#

ENV LD_LIBRARY_PATH /libfhe/
RUN export http_proxy=http://10.43.240.11:8080 ; apt-get update -y libboost-all-dev

VOLUME ["/fhe/","/libfhe/"]
ENTRYPOINT["/fhe/Op_x"]
CMD /bin/bash

EXPOSE 80
