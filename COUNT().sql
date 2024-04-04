--Counts number of records in a row based on specific criterion 

SELECT * FROM EmployeeSalary

SELECT count(JobTitle)--10, NULL was not counted 
FROM EmployeeSalary 

--DISTINCT will ignore the duplicates in a column
SELECT COUNT(DISTINCT JobTitle) as JobTypes --07
FROM EmployeeSalary


--Count() with Group By

