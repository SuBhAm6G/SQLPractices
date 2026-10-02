--Find female employees who's salaries are greater than any male employees
SELECT *
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ANY(SELECT Salary FROM Sales.Employees WHERE Gender = 'M');