--Find all the products that have a price hgiher than the average of all products
SELECT
	ProductID,
	Product,
	Category,
	Price
FROM Sales.Products
WHERE Price>(SELECT AVG(Price) FROM Sales.Products)