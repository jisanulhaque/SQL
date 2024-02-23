/*
*WHERE Statement
=,<>, <, >, And, Or, Not, Null, Not Null, In, Like
*/

SELECT *
FROM EmployeeDemo
--WHERE FirstName = 'Jisanul'
--WHERE FirstName <> 'Jisanul' AND Age <= 30 AND Gender<> 'Male'
--WHERE Age < 30 or Gender = 'Female'
--WHERE LastName LIKE 's%o%'
--WHERE FirstName is NOT NULL
WHERE FirstName IN('Jisanul', 'PAM', 'Stanley')