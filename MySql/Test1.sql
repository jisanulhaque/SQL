create table Test(
ID int,
Name varchar(50),
Address varchar (50),
Age int,
Salary int
);

insert into Test values
(2, 'Mona', 'Dhaka', 28, 30000),
(3, 'Tanzim', 'Chitong', 30, 29000),
(4, 'Papon', 'Chapai', 32, 25000),
(3, 'Nishu', 'Chadpur', 28, 22000);


update Test
set ID=5 
where Age=28 and Salary=22000

select * from Test;