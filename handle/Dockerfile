FROM ubuntu:18.04

MAINTAINER Tomaz Kramberger <tomaz.kramberger3@um.si>

RUN apt-get update -y && apt-get upgrade
RUN apt-get install -y openjdk-11-jre-headless nano wget python3

EXPOSE 2461/tcp
EXPOSE 2461/udp
EXPOSE 8000/tcp

RUN mkdir /handle-server
RUN mkdir /hdl_svr

COPY entry-point.sh /

WORKDIR /handle-server

RUN wget http://www.handle.net/hnr-source/handle-9.3.0-distribution.tar.gz -O hdl-9.3.tar.gz
RUN tar zxvf hdl-9.3.tar.gz

WORKDIR /handle-server/handle-9.3.0/lib

RUN wget https://jdbc.postgresql.org/download/postgresql-42.2.18.jar

WORKDIR /handle-server/hdl-9.3.0/bin

COPY genrsp.sh config.dct auto-complete.sh /

RUN chmod +x /auto-complete.sh /genrsp.sh

##COPY config.dct /hdl_svr

WORKDIR /

RUN chmod +x ./entry-point.sh

ENTRYPOINT ["/entry-point.sh"]