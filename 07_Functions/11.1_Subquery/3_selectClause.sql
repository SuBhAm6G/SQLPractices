--SELECT CLAUSE FOR SUBQUERY(Scalar)
SELECT
	ProductID,
	Product,
	Price,
	(SELECT COUNT(*) FROM Sales.Orders) TotalOrders
FROM Sales.Products