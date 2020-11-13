#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER $HANDLE_DBUSER WITH PASSWORD '$HANDLE_DBPASS';
    CREATE DATABASE "$HANDLE_DBNAME";
    GRANT ALL PRIVILEGES ON DATABASE "$HANDLE_DBNAME" TO $HANDLE_DBUSER;
EOSQL