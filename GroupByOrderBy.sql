/*
*Group By, Orderr By
*/

--SELECT Gender, Age, COUNT(Gender) AS GenderCOunt
--FROM EmployeeDemo
--WHERE Age >= 25
--GROUP BY Gender, Age
--ORDER BY Age

SELECT *
FROM EmployeeDemo
--WHERE Age >30
ORDER BY Age DESC, Gender DESC