/*
Updating and Deleting Data
*/

SELECT *
FROM SQLTutorial.dbo.EmployeeDemo

INSERT SQLTutorial.dbo.EmployeeDemo VALUES
(NULL, 'MIKE', 'Tyson', 44, 'Male')

UPDATE SQLTutorial.dbo.EmployeeDemo
SET EmployeeID = 1011
WHERE FirstName='MIKE' AND LastName = 'Tyson'

UPDATE SQLTutorial.dbo.EmployeeDemo
SET FirstName = 'Mike'
WHERE EmployeeID = 1011

UPDATE SQLTutorial.dbo.EmployeeDemo
SET Age =33, Gender = 'Female'
WHERE EmployeeID = 1010

DELETE
FROM SQLTutorial.dbo.EmployeeDemo
WHERE EmployeeID = 1011