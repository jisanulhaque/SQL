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

