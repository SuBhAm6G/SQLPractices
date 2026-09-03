SELECT *
FROM(
	SELECT 
		*,
		MAX(Salary) OVER() HighestSalary
	FROM Sales.Employees)T WHERE Salary = HighestSalary
