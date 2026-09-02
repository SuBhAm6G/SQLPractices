SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesPerProduct
FROM Sales.Orders
ORDER BY TotalSalesPerProduct ASC