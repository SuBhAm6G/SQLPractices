SELECT
CustomerID,
CONCAT(COALESCE(FirstName,''), ' ', COALESCE(LastName,'')) FullName,
COALESCE(Score,0)+ 10 Score
FROM Sales.Customers