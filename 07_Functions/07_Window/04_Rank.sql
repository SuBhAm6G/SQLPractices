SELECT
OrderID,
OrderDate,
Sales,
RANK() OVER(ORDER BY Sales DESC) RankSales
FROM Sales.Orders