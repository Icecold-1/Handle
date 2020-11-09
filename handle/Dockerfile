FROM openjdk:8-jdk-alpine

LABEL Tomaz Kramberger <tomaz.kramberger3@um.si>

EXPOSE 2461/tcp
EXPOSE 2461/udp
EXPOSE 8000/tcp

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y wget curl nano python3
RUN rm -rf /var/lib/apt/lists/*
RUN mkdir /handle-server

WORKDIR /handle-server

RUN wget http://www.handle.net/hnr-source/handle-9.3.0-distribution.tar.gz -O hdl-9.3.tar.gz
RUN tar zxvf hdl-9.3.tar.gz

## RUN wget https://ftp.postgresql.org/pub/odbc/versions/src/psqlodbc-12.01.0000.tar.gz
## RUN tar xvfz psqlodbc-12.01.0000.tar.gz

RUN wget https://jdbc.postgresql.org/download/postgresql-42.2.18.jar -P /handle-server/hdl-9.3/lib/

RUN mkdir /etc/hdl_svr

WORKDIR /handle-server/hdl-9.3/bin

COPY genrsp.sh config.dct /

RUN ./genrsp.sh /response.txt
RUN cat /response.txt | ./hdl-setup-server

RUN cp config.dct /etc/hdl_svr/