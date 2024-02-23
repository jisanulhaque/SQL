/*
Joins=> Inner and Outer
*/

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemo

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary


--Inner Join
--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemo
--Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID

----Full Outer Join
--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemo
--Full Outer Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID

----Left Outer Join
--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemo
--Left Outer Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID

----Right Outer Join
--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemo
--Right Outer Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID



--SELECT EmployeeSalary.EmployeeID, FirstName,LastName,JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemo
--Full Outer Join SQLTutorial.dbo.EmployeeSalary
--	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID

-- Find out the employee getting heighest paying slary except jisan and michael
--SELECT EmployeeDemo.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM SQLTutorial.dbo.EmployeeDemo
--Join SQLTutorial.dbo.EmployeeSalary
--ON EmployeeDemo.employeeID = EmployeeSalary.EmployeeID
--WHERE FirstName <> 'Jisanul' AND FirstName <> 'Michael'
--ORDER BY Salary DESC


/*Accontant Average Salary*/
SELECT JobTitle,AVG(Salary) AS AvgSalary
FROM SQLTutorial.dbo.EmployeeDemo
Join SQLTutorial.dbo.EmployeeSalary
ON EmployeeDemo.employeeID = EmployeeSalary.EmployeeID
WHERE JobTitle IN('Accountant','Salesman')
GROUP BY(JobTitle)
ORDER BY(AvgSalary) DESC

