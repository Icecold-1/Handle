FROM postgres:13.0

RUN if [ ! -d /docker-entrypoint-initdb.d ]; then mkdir /docker-entrypoint-initdb.d; fi

ENV POSTGRES_DBNAME=handle_db
ENV POSTGRES_DBUSER=handle_admin
ENV POSTGRES_DBPASS='4neCap2tpVctsVpv'

COPY init-handle-db.sh init-handle-tables.sh /docker-entrypoint.initdb.d/