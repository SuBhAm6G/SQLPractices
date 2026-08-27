SELECT
OrderID,
OrderDate
ProductID,
SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProduct
FROM Sales.Orders
