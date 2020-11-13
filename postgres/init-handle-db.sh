#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --password "$POSTGRES_PASSWORD" <<-EOSQL
    CREATE USER handle_admin WITH PASSWORD '4neCap2tpVctsVpv';
    CREATE DATABASE "handle_db";
    GRANT ALL PRIVILEGES ON DATABASE "handle_db" TO handle_admin;
EOSQL

psql -v ON_ERROR_STOP=1 --username "handle_admin" --password "4neCap2tpVctsVpv" --database "handle_db" <<-EOSQL
	CREATE TABLE nas (na bytea not null, primary key(na));
	CREATE TABLE handles (handle bytea not null, idx int4 not null, type bytea, data bytea, ttl_type int2, ttl int4, timestamp int4, refs text, admin_read bool, admin_write bool, pub_read bool, pub_write bool, primary key(handle, idx));
	CREATE INDEX dataindex on handles ( data );
	CREATE INDEX handleindex on handles ( handle );
	GRANT all on nas,handles to handle_admin;
	GRANT select on nas,handles to public;
EOSQL