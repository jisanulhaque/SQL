create table Table_1
(
A int,
B int,
C int
)

create table Table_2
(
A int,
D int,
E int
)

create table Table_3
(
D int,
F int,
G int
)

insert into Table_1 values
(1, 5, 6),
(2, 8, 4),
(3, 5, 6),
(4, 9, 7),
(5, 10, 2)

insert into Table_2 values
(1, 8, 6),
(2, 5, 4),
(3, 6, 5),
(11, 5, 3),
(6, 12, 1)

insert into Table_3 values
(1,1,1),
(2,2,2),
(6,3,3),
(5,4,4),
(12,5,5)

Select T1.A,T2.A, T2.D, T3.D
from Table_1 T1
right JOIN Table_2 T2
ON T1.A = T2.A
right JOIN Table_3 T3
ON T2.D=T3.D


--SELECT * From Table_1
SELECT * From Table_2
SELECT * From Table_3