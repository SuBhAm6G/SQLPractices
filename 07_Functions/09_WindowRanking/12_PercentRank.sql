-- products that fall within highest 40% price
SELECT *
FROM (
	SELECT 
		Product,
		Price,
		PERCENT_RANK() OVER(ORDER BY Price DESC) * 100 DistRank
	FROM Sales.Products)t
WHERE DistRank <=40