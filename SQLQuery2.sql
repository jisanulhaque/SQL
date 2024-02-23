/*
*SELECT
*Top, Distinct, Count, As, Max, Min, Avg
*/

--SELECT *
--FROM EmployeeDemo

--SELECT FirstName, Age FROM EmployeeDemo

--SELECT EmployeeID, Salary FROM EmployeeSalary

----SELECT TOP 5 EmplyeeID,FirstName, Age
----FROM EmployeeDemo

--SELECT DISTINCT(EmplyeeID)
--FROM EmployeeDemo

--SELECT DISTINCT(Gender) FROM EmployeeDemo

--SELECT COUNT(EmployeeID) AS IDCount 
--FROM EmployeeSalary

--SELECT MAX(Salary) AS MaxSalary
--FROM EmployeeSalary

--SELECT MIN(Salary) AS MinSalary
--FROM EmployeeSalary

--SELECT AVG(Salary) AS AvgSalary
--FROM EmployeeSalary

--SELECT *
--FROM SQLTutorial.dbo.EmployeeSalary

SELECT DISTINCT(Gender) FROM EmployeeDemo

SELECT COUNT(FirstName) AS NameCOunt FROM EmployeeDemo

