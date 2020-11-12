FROM postgres:13.0

RUN if [ ! -d /docker-entrypoint-initdb.d ]; then mkdir /docker-entrypoint-initdb.d; fi

COPY postgres-entrypoint.sh /

## COPY db-create.sql /docker-entrypoint-initdb.d

COPY init-handle-db.sh /docker-entrypoint.initdb.d

##ENTRYPOINT ["/postgres-entrypoint.sh"]
##CMD ["postgres"]