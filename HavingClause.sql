/*
Having Clauses
*/

SELECT JobTitle, COUNT(JobTitle)
FROM SQLTutorial.dbo.EmployeeDemo
JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
--WHERE COUNT(JobTitle) > 1--Wont work with WHERE Clause
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1