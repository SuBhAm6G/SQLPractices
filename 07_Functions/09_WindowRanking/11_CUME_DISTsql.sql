-- products that fall within highest 40% price
SELECT *
FROM (
	SELECT 
		Product,
		Price,
		CUME_DIST() OVER(ORDER BY Price DESC) * 100 DistRank
	FROM Sales.Products)t
WHERE DistRank <=40