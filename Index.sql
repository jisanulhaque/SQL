select * from Persons

create index idx_ID
on Persons(ID);

drop index Persons.idx_ID