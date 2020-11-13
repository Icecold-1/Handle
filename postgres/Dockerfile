FROM postgres:13.0

RUN if [ ! -d /docker-entrypoint-initdb.d ]; then mkdir /docker-entrypoint-initdb.d; fi

ENV HANDLE_DBNAME=handle_db
ENV HANDLE_DBUSER=handle_admin
ENV HANDLE_DBPASS='4neCap2tpVctsVpv'

COPY postgres-entrypoint.sh /

## COPY db-create.sql /docker-entrypoint-initdb.d

COPY init-handle-db.sh init-handle-tables.sh /docker-entrypoint.initdb.d/

##ENTRYPOINT ["/postgres-entrypoint.sh"]
##CMD ["postgres"]