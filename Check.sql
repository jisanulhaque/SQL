/*CHECK CONSTRAINT*/

--Check on Create Table
create table Persons
(ID int not null,
LastName varchar(255) not null,
FirstName varchar(255) not null,
Age int,
City varchar(50),
constraint Ch_Person check(Age>=18 and City in ('Dhaka', 'Cumilla', 'Natore'))
);


select * from Persons

--inserting values
insert into Persons values
(01, 'Haque', 'Jisan', 18, 'Dhaka'),
(02, 'Mrunal', 'Thakur', 20, 'Cumilla')

--Adding Primary Key
alter table Persons
add constraint Ck_Person Primary Key (ID)

--drop Check
alter table Persons
Drop constraint Ch_Person