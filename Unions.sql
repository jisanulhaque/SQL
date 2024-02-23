/*
*Unions/Union Operator
*/

--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Create Table WareHouseEmployeeDemo
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemo
--Full Outer Join SQLTutorial.dbo.WareHouseEmployeeDemo
--ON EmployeeDemo.EmployeeID = WareHouseEmployeeDemo.EmployeeID


--SELECT *
--FROM SQLTutorial.dbo.EmployeeDemo
--UNION ALL
--SELECT *
--FROM SQLTutorial.dbo.WareHouseEmployeeDemo
--ORDER BY(EmployeeID)

SELECT EmployeeID, FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemo
UNION ALL
SELECT EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY(EmployeeID)