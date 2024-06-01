--Show Full table
select * from Test_Tab

--No null problem solved
alter table Test_Tab
alter column Name varchar(50) not null;

--Dublicate key is present in table so lets fix it
update Test_Tab
set ID=101, Name='Pritom'
where ID=100 and Amount=600

--After solving all bugs, Primary Key is Declared!!
alter table Test_Tab
add constraint PK_Test Primary Key(ID, Name);