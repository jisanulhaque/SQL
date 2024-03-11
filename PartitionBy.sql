/*
Previous Practice
*/
--Aliasing 
--SELECT*
--FROM SQLTutorial.dbo.EmployeeDemo demo
--JOIN SQLTutorial.dbo.EmployeeSalary sal
--ON demo.EmployeeID = sal.EmployeeID

--SELECT FirstName + ' '+ LastName FullName
--FROM SQLTutorial.dbo.EmployeeDemo demo

--SELECT*
--FROM SQLTutorial.dbo.EmployeeSalary

--UPDATE SQLTutorial.dbo.EmployeeSalary
--SET EmployeeID = 1010 WHERE JobTitle = 'Watchman'

/*
Topic: PARTITION BY
*/
SELECT FirstName + LastName as FullName, Salary,
COUNT(Gender) OVER(PARTITION BY Gender) as TotalGender
FROM SQLTutorial.dbo.EmployeeDemo demo
JOIN SQLTutorial.dbo.EmployeeSalary sal
ON demo.EmployeeID = sal.EmployeeID

SELECT Gender, COUNT(Gender)
FROM SQLTutorial.dbo.EmployeeDemo demo
JOIN SQLTutorial.dbo.EmployeeSalary sal
ON demo.EmployeeID = sal.EmployeeID
GROUP BY Gender

