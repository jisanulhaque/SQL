select Occupation, Count(Name) over (Partition by Occupation) from OCCUPATIONS

