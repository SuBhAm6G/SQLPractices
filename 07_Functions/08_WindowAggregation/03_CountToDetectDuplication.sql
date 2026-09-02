-- Checking for duplication
SELECT
*
FROM (SELECT 
	OrderID,
	COUNT(*) OVER(PARTITION BY OrderID) CheckPK
	FROM Sales.OrdersArchive
)t WHERE CheckPK>1