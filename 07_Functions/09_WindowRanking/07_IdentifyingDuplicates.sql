--Identifying and removing duplicates
SELECT *
FROM(
	SELECT
		ROW_NUMBER() OVER(PARTITION BY OrderID ORDER BY CreationTime DESC) rnk,
		*
	FROM Sales.OrdersArchive
)t WHERE rnk = 1