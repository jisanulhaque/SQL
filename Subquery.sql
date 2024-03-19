/*
TOPIC: SUBQUERY
*/

-- subquery must not return more than 1 expression

SELECT *
FROM EmployeeSalary

--in select statement
SELECT EmployeeID, Salary, (SELECT Avg(Salary) FROM EmployeeSalary) as AvgAge
FROM EmployeeSalary sal

--How to do it with Partition By
SELECT EmployeeID, Salary, Avg(Salary) over() as AvgSal
FROM EmployeeSalary sal

--Group By doesn't work
SELECT EmployeeID, Salary, Avg(Salary) as AvgSal
FROM EmployeeSalary sal
Group By EmployeeID, Salary

--Subquery in From
Select a.JobTitle, Count(JobTitle) as EmployeePerJob, Avg(a.Salary) as AvgPostSal
From(Select EmployeeID, JobTitle, Salary FROM EmployeeSalary) a
Group By a.JobTitle
Order By a.JobTitle

--Subquery in Where statement
Select sal.EmployeeID, JobTitle, Salary, Age
From EmployeeSalary sal
Join EmployeeDemo demo
	On sal.EmployeeID = demo.EmployeeID
Where sal.EmployeeId in(SELECT EmployeeID
From EmployeeDemo
Where Age > 30) and Age>30