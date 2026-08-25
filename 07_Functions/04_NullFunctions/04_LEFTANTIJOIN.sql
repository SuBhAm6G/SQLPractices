--LEFT ANTI JOIN
SELECT
o.OrderID,
c.*
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON o.CustomerID = c.CustomerID
WHERE o.CustomerID IS NULL