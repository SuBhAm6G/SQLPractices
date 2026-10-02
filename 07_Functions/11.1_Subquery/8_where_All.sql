--Find female employees who's salaries are greater than ALL male employees
SELECT *
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ALL(SELECT Salary FROM Sales.Employees WHERE Gender = 'M');