FROM postgres:13.0

ENV HANDLE_ACCOUNT_ADMIN=handle_admin
ENV HANDLE_ACCOUNT_PASSW=4neCap2tpVctsVpv
ENV HANDLE_DATABASE_NAME=handle

COPY /init-handle-db.sh /db-create.sql /

RUN chmod +x db-create.sql init-handle-db.sh

RUN ./init-handle-db.sh

RUN psql -U $HANDLE_ACCOUNT_ADMIN -h 127.0.0.1 -d $HANDLE_DATABASE_NAME -f db-create.sql

RUN echo "DATABASE CREATED SUCCESSFULLY"