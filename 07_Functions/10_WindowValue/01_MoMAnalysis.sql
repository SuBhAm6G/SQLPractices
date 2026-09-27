--Get Month on Month change of sales
SELECT 
*,
ROUND(CAST((TotalSales - PrevMonthSales) AS float)/PrevMonthSales * 100,2) MoM_Change
FROM (SELECT
		MONTH(OrderDate) Month,
		SUM(Sales) TotalSales,
		LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) PrevMonthSales
	FROM Sales.Orders
	GROUP BY MONTH(OrderDate)
	)t
