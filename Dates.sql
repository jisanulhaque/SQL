--Date/Time in SQL Server
--Date-Format YYYY-MM-DD
--DATETIME-FORMAT: YYYY-MM-DD HH:MI:SS
--SAMLLDATETIME-FORMAT: YYYY-MM-DD HH:MI:SS
--TIMESTAMP-FORMAT: A UNIQUE VALUE

--creating a table
CREATE TABLE OrderDetails
(ID int not null IDENTity(1,1) Primary Key,
ProductName char not null,
OrderDate date not null
)

select * from OrderDetails

--Type of ProductName is wrong, lets correct it first
alter table OrderDetails
alter column ProductName varchar(255) not null

--inserting data
insert into OrderDetails values
('Pepsudent','2024-06-07')

insert into OrderDetails values
('Rice','2024-06-06'),
('Pulse','2024-06-05'),
('Sugar','2024-06-01')

--lets try to slve the ID serial
--droped PK
alter table OrderDetails
drop constraint [PK__OrderDet__3214EC27872FE2CF] 
--Droped ID Column
alter table OrderDetails
drop column ID
--creating a new column
alter table OrderDetails
add ID int not null identity(1,1) Primary Key
--add a new record to check
insert into OrderDetails values
('Powder', '2024-06-02')--working fine

--comparing date
select ID, OrderDate, ProductName from OrderDetails
where OrderDate<='2024-06-05'
order by OrderDate

--adding time in OrderDate Column
alter table OrderDetails
alter column OrderDate datetime not null --sysdatetime();

insert into OrderDetails values 
('Colget', '2024-06-07 12:13:06')

select * from OrderDetails
where OrderDate='2024-06-07 12:13:06'

select * from OrderDetails


