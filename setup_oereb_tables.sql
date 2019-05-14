SET ROLE :PG_USER;

-- ili2pg commands after here:

-- for testing purposes only:
create schema :PG_USER;

create table :PG_USER.testtable (
  name varchar(30) primary key,
  value varchar(50) not null,
  updatedt timestamp not null
);

insert into :PG_USER.testtable (name, value, updatedt) values ('CPU', '256', now());
insert into :PG_USER.testtable (name, value, updatedt) values ('MEM', '512m', now());

grant all on :PG_USER.testtable to :PG_PRIMARY_USER;
