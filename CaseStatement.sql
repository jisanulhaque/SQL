/*
*Case Statement
*Date: 26 Feb 24
*/

--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age = 38 THEN 'Stanley'
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Baby'
	
--END 
--FROM SQLTutorial.dbo.EmployeeDemo
--WHERE Age is NOT NULL
--ORDER BY Age
------------------------------------
--Company Needs Person who's age is not less than 30 and not more than 35
--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age BETWEEN 30 AND 35 THEN 'Eligible'
--	WHEN Age < 30 OR Age > 35 THEN 'Not Eligible'
--	ELSE 'Error Age'
--END AS Eligibility
--FROM SQLTutorial.dbo.EmployeeDemo
--WHERE Age is NOT NULL
--ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.10)
	WHEN JobTitle = 'Accountant' THEN Salary +(Salary * .03)
	WHEN JobTitle = 'HR' THEN Salary +(Salary * .0001)
	ELSE Salary +(Salary * .03)
END AS SalaryRaise
FROM SQLTutorial.dbo.EmployeeDemo
Join SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemo.EmployeeID = EmployeeSalary.EmployeeID
ORDER BY JobTitle

