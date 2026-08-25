SELECT 
CustomerID,
Score,
AVG(CASE 
	WHEN Score IS NULL THEN 0
	ELSE Score
END) OVER() AvgCustomer 
FROM Sales.Customers