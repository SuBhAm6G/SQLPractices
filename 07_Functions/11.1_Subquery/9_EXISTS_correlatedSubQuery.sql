--Show the order details for customer in Germany using EXISTS and correlated subquery
SELECT
	*
FROM Sales.Orders o
WHERE EXISTS (SELECT 1 FROM Sales.Customers c WHERE Country = 'Germany' AND o.CustomerID = c.CustomerID)