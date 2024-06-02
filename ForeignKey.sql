--Foreign Key
--Creating two tables
create table Persons
(PersonID int NOT NULL Primary Key,
LastName varchar(255),
Age int not null
)

create table Orders
(OrderID int not null primary key,
OrderNumber int not null,
PersonID int Foreign Key References Persons(PersonID)
)
--Checkng the tables
select * from Persons
select * from Orders

--droping forign key
alter table Orders
drop constraint [FK__Orders__PersonID__06ED0088]

--adding foreign key
alter table Orders
add constraint FK_Order foreign key(PersonID) references Persons(PersonID) 

--dropping both primary and foreign key
/*Foreign Key first then Primary Key*/
alter table Orders
drop constraint [FK_Order]

alter table Persons
drop constraint [PK__Persons__AA2FFB8501331961]
--dropping primary key of Orders Table
alter table Orders
drop constraint [PK__Orders__C3905BAFACCE8FDF]