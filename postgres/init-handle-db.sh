#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER $HANDLE_ACCOUNT_ADMIN WITH PASSWORD '$HANDLE_ACCOUNT_PASSW';
    CREATE DATABASE "$HANDLE_DATABASE_NAME";
    GRANT ALL PRIVILEGES ON DATABASE "$HANDLE_DATABASE_NAME" TO $HANDLE_ACCOUNT_ADMIN;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$HANDLE_ACCOUNT_ADMIN" --database "$HANDLE_DATABASE_NAME" <<-EOSQL
	CREATE TABLE nas (na bytea not null, primary key(na));
	CREATE TABLE handles (handle bytea not null, idx int4 notnull, type bytea, data bytea, ttl_type int2, ttl int4, timestamp int4, refs text, admin_read bool,admin_write bool, pub_read bool,pub_write bool, primary key(handle, idx));
	CREATE INDEX dataindex on handles ( data );
	CREATE INDEX handleindex on handles ( handle );
	GRANT all on nas,handles to handleserver;
	GRANT select on nas,handles to public;
EOSQL