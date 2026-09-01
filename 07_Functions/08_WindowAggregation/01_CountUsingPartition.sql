SELECT 
OrderId,
OrderDate,
CustomerID,
COUNT(*) OVER () NoOfOrders,
COUNT(*) OVER (PARTITION BY CustomerID) OrderByCustomer

FROM Sales.Orders