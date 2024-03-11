/*
TOPIC: Common Table Expression(CTE)
*/

WITH CTE_Employee as(SELECT FirstName, LastName, Gender, Salary
,COUNT(Gender) OVER(PARTITION BY Gender)as TotalGender
,Avg(Salary) OVER(PARTITION BY Gender) as AvgSal
FROM SQLTutorial..EmployeeDemo as emp
JOIN SQLTutorial..EmployeeSalary as sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee