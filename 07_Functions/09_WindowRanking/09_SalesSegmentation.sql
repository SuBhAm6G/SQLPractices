--Data Segmentation
SELECT
	*,
	CASE 
		WHEN Buckets = 1 THEN 'HIGH'
		WHEN Buckets = 2 THEN 'MEDIUM'
		WHEN Buckets = 3 THEN 'LOW'
	END SalesSegmentation
FROM(
	SELECT
		OrderID,
		Sales,
		NTILE(3) OVER(ORDER BY Sales DESC) Buckets
	FROM Sales.Orders
	)t 