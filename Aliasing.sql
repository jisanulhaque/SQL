/*
Aliasing-Temporarily changing the column/Table Name in the script
*/

SELECT FirstName FrsNam
FROM SQLTutorial.dbo.EmployeeDemo

SELECT FirstName + ' '+ LastName FullName --Adding two cilumns and showing as FullName
FROM SQLTutorial.dbo.EmployeeDemo

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

UPDATE SQLTutorial.dbo.EmployeeSalary
SET JobTitle = 'Watchman'
WHERE EmployeeID = 1011

SELECT JobTitle, COUNT(JobTitle) AS DistRoles
FROM SQLTutorial.dbo.EmployeeSalary
GROUP BY JobTitle 
--HAVING COUNT(JobTitle) > 1

SELECT AVG(Salary) AS AvgSalary
FROM SQLTutorial.dbo.EmployeeSalary

select *
FROM SQLTutorial.dbo.WareHouseEmployeeDemo

SELECT Demo.FirstName, Salary.Salary, WH.Age
FROM SQLTutorial.dbo.EmployeeDemo AS Demo
LEFT JOIN SQLTutorial.dbo.EmployeeSalary AS Salary
	ON Demo.EmployeeID = Salary.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemo AS WH
	ON Demo.EmployeeID = WH.EmployeeID
