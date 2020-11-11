create table nas (
	na bytea not null, 
	primary key(na)
);

create table handles (
	handle bytea not null, 
	idx int4 notnull, 
	type bytea, 
	data bytea, 
	ttl_type int2, 
	ttl int4, 
	timestamp int4, 
	refs text, 
	admin_read bool,
	admin_write bool, 
	pub_read bool,
	pub_write bool, 
	primary key(handle, idx)
);

create index dataindex on handles ( data );

create index handleindex on handles ( handle );