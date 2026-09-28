SELECT *,
RANK() OVER(ORDER BY t.TotalSales DESC) Ranking
FROM(
	SELECT
		CustomerID,
		SUM(Sales) TotalSales
	FROM Sales.Orders
	GROUP BY CustomerID)t