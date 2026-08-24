SELECT 
Sales,
Quantity,
Sales/NULLIF(Quantity,0) SalesPrice
FROM Sales.Orders