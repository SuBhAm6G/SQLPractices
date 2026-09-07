SELECT
	OrderID,
	Sales,
	RANK() OVER(ORDER BY Sales DESC) RANKS 
FROM Sales.Orders