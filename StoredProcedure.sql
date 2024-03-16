/*
Previous Practice
*/

SELECT *
FROM EmployeeErrors

SELECT EmployeeID, TRIM(EmployeeID) TrimID
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) TrimID
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) TrimID
FROM EmployeeErrors

--SELECT FirstName, REPLACE(FirstName, SUBSTRING(FirstName,2,3), '**') replc
--FROM EmployeeErrors

SELECT err.FirstName, SUBSTRING(err.FirstName, 1,3) replc, emp.FirstName
FROM SQLTutorial..EmployeeDemo emp
JOIN EmployeeErrors err
	ON emp.EmployeeID = err.EmployeeID

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

/*
TOPIC:Stored PROCEDURE
*/

CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemo

EXEC TEST

CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)
INSERT #temp_employee
SELECT JobTitle, COUNT(JobTitle), Avg(Age), AVg(Salary)
FROM EmployeeDemo emp
JOIN EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle
SELECT *
FROM #temp_employee

EXEC Temp_Employee@JobTitle --Need to fix this