/*
Partition By: It does not reduce columns like GROUP BY rather it provides the distinct 
value beside all the selected columns
*/
SELECT *
FROM SQLTutorial.dbo.EmployeeDemo
-->Run this
SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) as TotoalGen
FROM SQLTutorial.dbo.EmployeeDemo dem
JOIN SQLTutorial.dbo.EmployeeSalary sal
ON dem.EmployeeID = sal.EmployeeID