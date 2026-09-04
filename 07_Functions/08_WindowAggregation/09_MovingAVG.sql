-- Moving Average
SELECT 
OrderID,
ProductID,
Sales,
AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) MovingAvg
FROM Sales.Orders