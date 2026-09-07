SELECT
	OrderID,
	Sales,
	ROW_NUMBER() OVER (ORDER BY Sales DESC) RankSales
FROM Sales.Orders