FROM postgres:13.0

RUN if [ ! -d /docker-entrypoint-initdb.d ]; then mkdir /docker-entrypoint-initdb.d; fi

ENV HANDLE_ACCOUNT_ADMIN=handle_admin
ENV HANDLE_ACCOUNT_PASSW=4neCap2tpVctsVpv
ENV HANDLE_DATABASE_NAME=handle

COPY init-handle-db.sh db-create.sql /docker-entrypoint-initdb.d

RUN echo "DATABASE CREATED SUCCESSFULLY"

ENTRYPOINT["/postgres-entrypoint.sh"]
CMD["postgres"]