-- Show all customer details and find the total orders of each customer
SELECT
	*
FROM Sales.Customers c
LEFT JOIN(
	SELECT
		CustomerID,
		COUNT(OrderID) TotalOrders
	FROM Sales.Orders
	GROUP BY CustomerID)o
ON c.CustomerID = o.CustomerID