--Running Total
SELECT
	FORMAT(OrderDate, 'MMM') Month,
	Sales,
	SUM(Sales) OVER(ORDER BY OrderDate) RUNNING_SUM
FROM Sales.Orders

--Rolling Total
SELECT
	FORMAT(OrderDate, 'MMM') Month,
	Sales,
	SUM(Sales) OVER(ORDER BY OrderDate ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) ROLLING_SUM
FROM Sales.Orders