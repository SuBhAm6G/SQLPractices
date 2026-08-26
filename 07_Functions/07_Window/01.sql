SELECT
ProductID,
SUM(Sales) TotalSales
FROM Sales.Orders
GROUP BY ProductID