select Occupation, Count(Name) over (Partition by Occupation) from OCCUPATIONS

Select [Doctor], [Professor], [Singer], [Actor]
From OCCUPATIONS
(
Select Row_Number() over (Partition by Occupation Order By Name) Row_num, Name,Occupation
from OCCUPATIONS
) Temp
PIVOT
(
MAX(Name) for Occupation in ([Doctor], [Professor],[Singer], [Actor])
) Pvt;
