--WITH CTE_Employee as(
--SELECT  emp.EmployeeID, FirstName + ' '+ LastName as FullName, JobTitle, Salary
--FROM SQLTutorial..EmployeeDemo emp
--JOIN SQLTutorial..EmployeeSalary sal
--	ON emp.EmployeeID=sal.EmployeeID
--)
--SELECT *
--FROM CTE_Employee
DROP TABLE IF EXISTS #Temp_Sal
CREATE TABLE #Temp_Sal(
EmployeeID int,
FullName varchar(50),
JobTitle varchar(50),
Salary int
)

INSERT INTO #Temp_Sal
SELECT emp.EmployeeID, FirstName+ ' '+LastName as FullName, JobTitle, Salary
FROM SQLTutorial..EmployeeDemo emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID=sal.EmployeeID
WHERE Age >= 30

SELECT *
FROM #Temp_Sal


/*
TOPIC:String Functions and Use Cases
*/


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

--Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM --It will not trim the middle space
FROM EmployeeErrors 

SELECT EmployeeID, LTRIM(EmployeeID) IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) IDTRIM
FROM EmployeeErrors

--Using REPLACE
SELECT LastName, REPLACE(LastName, '- Fired', '') LastNameFix
FROM EmployeeErrors

--Using Substring
Select *
From SQLTutorial..EmployeeDemo

UPDATE SQLTutorial..EmployeeDemo
SET FirstName = 'Jim' WHERE EmployeeID=1001

SELECT FirstName, SUBSTRING(FirstName, 2,50)
FROM EmployeeErrors

SELECT err.FirstName, SUBSTRING(err.FirstName,1,3),demo.FirstName, SUBSTRING(demo.FirstName,1,3)
FROM EmployeeErrors err
JOIN SQLTutorial..EmployeeDemo demo
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(demo.FirstName,1,3)

--Using Upper and Lower
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors
