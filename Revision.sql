create Table Revision(
ID int primary key not null,
FirstName varchar(50) not null,
LastName varchar(50),
Age int,
City varchar (50),
Rmk varchar(255)
)

insert into Revision values
(02,'Prothoma', 'Haq', 19, 'Kushtia', 'Not Adult'),
(03,'Armani', 'Tilli', 23, 'Dhaka', null),
(04,'Simran', 'sen', 25, 'Manikganj', null),
(05,'Suchita', 'Choudhuri', 28, 'Barisal',null )


select distinct City, FirstName from Revision

select count(distinct City)as Cities from Revision

select * from Revision 
where Age >=25 
order by Age desc

select * from Revision
where Rmk is not null

Update Revision 
set Rmk='Probasi' where FirstName='Armani'

delete from Revision where ID=5
select top 2 * from Revision

select City, MIN(Age) Youngest from Revision
Group By City

select City, count(City) Persons from Revision
Group by City

select City, Avg(Age) AvgAge from Revision
Group by City

select ID, FirstName from Revision
where FirstName LIKE '%an'

select * from Revision
where FirstName Like '%__r_n'

select * from Revision
where FirstName Like '[JPAS]%[l]'

select * from Revision
where FirstName Like '[a-fj]%'--"-" this allows to specify a range of characters

select * from Revision
where FirstName Like '__m%i'

select * from Revision
where City in ('Dhaka', 'Kushtia')

select FirstName, Age from Revision
where Age>=19 and Age <=30

select *from Revision
where City not in ('Dhaka', 'Chitong')

select * from Revision
where Age not between 10 and 30--it will show nothing

select * from EmployeeDemo demo
full outer join EmployeeSalary sal on demo.EmployeeID=sal.EmployeeID
where demo.FirstName  is not null

--self join
select * from Revision r1, Revision r2
where r1.ID=r2.ID

select EmployeeID from EmployeeDemo
union all
select EmployeeID from EmployeeSalary
order by EmployeeID

alter table Revision
add OrderNo int

insert into Revision(OrderNo)
values (123),(124),(125)

alter table Revision
alter column FirstName varchar(50)

alter table Revision
add constraint PK_Rev PRIMARY KEY(ID)
----------------------------------------
 create view [Employee] as
 select demo.EmployeeID,demo.FirstName, sal.Salary from EmployeeDemo demo
 join EmployeeSalary sal on demo.EmployeeID=sal.EmployeeID

 select * from [Employee]
drop view [Employee]
select * from [Employee] --deleted view [Employee]

select * from Persons
truncate table Persons
select * from Revision
--String Functions

--returns the ASCII code of first character 
select ASCII(FirstName) NumCode from Revision

--retunrs the character length
select LENGTH(FirstName) NameLength from Revision

--add several strings
select CONTACT('Hei ', 'There!!')
select FIND_IN_SET 

Select format(23456.65,2, 0)

select * from Revision



select FirstName +'s Age is '+ Cast(Age as CHAR) from Revision

select JobTitle, Avg(Salary) from EmployeeSalary
Group By JobTitle

select * from EmployeeSalary

--Pivot Table
select [Accountant],[Receptionist], [HR], [Regional Manager], [Salesman], [Supplier Relations],[Watchman]
from (select JobTitle, Salary from EmployeeSalary)as SourceTable
PIVOT(
Avg(Salary) for JobTitle IN ([Accountant],[Receptionist], [HR], [Regional Manager], [Salesman], [Supplier Relations],[Watchman])
) as PivotTable;