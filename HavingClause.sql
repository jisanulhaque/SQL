/*
Having Clauses
*/

--SELECT JobTitle, COUNT(JobTitle)
--FROM SQLTutorial.dbo.EmployeeDemo
--JOIN SQLTutorial.dbo.EmployeeSalary 
--	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
----WHERE COUNT(JobTitle) > 1--Wont work with WHERE Clause
--GROUP BY JobTitle
--HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary) AS AverageSalary
FROM SQLTutorial.dbo.EmployeeDemo
JOIN SQLTutorial.dbo.EmployeeSalary 
	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 40000 --It will just after GROUP BY
ORDER BY AVG(Salary)