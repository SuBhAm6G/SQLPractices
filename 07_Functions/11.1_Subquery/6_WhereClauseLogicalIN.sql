--Show the details of Orders made by customer in Germany
SELECT
	*
FROM Sales.Orders
WHERE CustomerID IN (SELECT CustomerID FROM Sales.Customers WHERE Country='Germany')