FROM ubuntu:18.04

RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

RUN apt-get update && apt-get install -y python-software-properties software-properties-common postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3

USER postgres

RUN psql --command "CREATE USER handle_admin WITH PASSWORD '4neCap2tpVctsVpv'"

RUN psql --command createdb -O handle_admin -E unicode handle

COPY db-create.sql /

RUN psql --command -U handle_admin -d handle -a -q /db-create.sql

