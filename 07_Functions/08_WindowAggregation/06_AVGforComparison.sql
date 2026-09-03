SELECT *
FROM
	(SELECT 
		OrderID,
		ProductID,
		Sales,
		AVG(Sales) OVER() AvgSale
	FROM Sales.Orders
)t WHERE Sales > AvgSale