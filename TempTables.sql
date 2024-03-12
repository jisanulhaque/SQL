/*
TOPIC: TEMP TABLES
*/
--CREATE TABLE #temp_Employee(
--EmployeeID int,
--JobTitle varchar(50),
--Salary int
--)

--INSERT INTO #temp_Employee VALUES
--(1001, 'HR', 34000)

--SELECT *
--FROM #temp_Employee

--INSERT INTO #temp_Employee 
--SELECT* 
--FROM SQLTutorial..EmployeeSalary
DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2(
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM SQLTutorial..EmployeeDemo emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT*
FROM #temp_Employee2