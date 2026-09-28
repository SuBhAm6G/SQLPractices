SELECT	
	ProductID,
	Price
FROM (SELECT
		ProductID,
		Price,
		AVG(Price) OVER() AvgPrice
	FROM Sales.Products)t
	WHERE Price>AvgPrice