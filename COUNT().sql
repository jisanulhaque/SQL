
/*
Aggregate FUnction: COUNT()
*/
--Counts number of records in a row based on specific criterion 

SELECT * FROM EmployeeSalary

SELECT count(JobTitle)--10, NULL was not counted 
FROM EmployeeSalary 

--DISTINCT will ignore the duplicates in a column
SELECT COUNT(DISTINCT JobTitle) as JobTypes --07, ignored the duplicates
FROM EmployeeSalary

--Count() with Group By
SELECT JobTitle, COUNT(JobTitle) --Here NULL will be shown as a group
FROM EmployeeSalary
--WHERE JobTitle is not null --To avoid Null values
Group By JobTitle

SELECT JobTitle, COUNT(*) AS JobType
FROM EmployeeSalary
WHERE JobTitle is not null
Group By JobTitle

--A 10% deduction  from salary for each group
SELECT JobTitle, Sum(Salary) TotalSal, SUM(Salary-(Salary*0.1)) DecereasedSal
FROM EmployeeSalary
Where JobTitle is not null
Group By JobTitle