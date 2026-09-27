-- rank customers based on their average days between their orders
SELECT
	CustomerID,
	AVG(DaysUntilNxtOrder) AvgDaysbtwnOrders,
	RANK() OVER (ORDER BY COALESCE(AVG(DaysUntilNxtOrder),9999)) RankAvg
FROM (SELECT 
		OrderID,
		CustomerID,
		OrderDate,
		LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) NextOrderDate,
		DATEDIFF(DAY, OrderDate, LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate)) DaysUntilNxtOrder
	FROM Sales.Orders)t
Group by CustomerID