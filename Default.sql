create table T_Order(
ID int NOT NULL,
OrderNumber int not null,
OrderDate date default getdate()
);

select * from T_Order

insert into T_Order values
(02, 124, getdate());

--removing constraint 
alter table T_Order
drop constraint [DF__T_Order__OrderDa__09C96D33] 

--add constraint on Alter Table
alter table T_Order
add constraint df_Date default getdate() for OrderDate