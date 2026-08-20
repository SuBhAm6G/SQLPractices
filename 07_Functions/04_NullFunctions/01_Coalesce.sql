SELECT
CustomerID,
Score,
AVG(COALESCE(Score,0)) OVER (ORDER BY Score) AVGSCORES
FROM Sales.Customers