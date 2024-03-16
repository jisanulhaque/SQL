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

