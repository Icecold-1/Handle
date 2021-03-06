#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 -U "$POSTGRES_DBUSER" -d "$POSTGRES_DBNAME" <<-EOSQL
	CREATE TABLE nas (na bytea not null, primary key(na));
	CREATE TABLE handles (handle bytea not null, idx int4 not null, type bytea, data bytea, ttl_type int2, ttl int4, timestamp int4, refs text, admin_read bool, admin_write bool, pub_read bool, pub_write bool, primary key(handle, idx));
	CREATE INDEX dataindex on handles ( data );
	CREATE INDEX handleindex on handles ( handle );
EOSQL

#	GRANT all on "nas","handles" to $POSTGRES_DBUSER;
#	GRANT select on "nas","handles" to public;