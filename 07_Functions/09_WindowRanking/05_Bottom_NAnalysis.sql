--Bottom N Analysis
-- Lowest 2 Customers based on their total sales
SELECT *
FROM(
SELECT
	CustomerID,
	SUM(Sales) TotalSalesByCustomer,
	ROW_NUMBER() OVER(ORDER BY SUM(Sales) ASC) RANKBYCustomer
FROM Sales.Orders
GROUP BY CustomerID)t WHERE RANKBYCustomer <= 2