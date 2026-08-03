--How many orders are placed each year?
SELECT
DATETRUNC(year,OrderDate),
COUNT(*) NoOfOrders
FROM Sales.Orders
GROUP BY DATETRUNC(year,OrderDate);

--How many orders are placed each month?
SELECT
DATENAME(month,OrderDate),
COUNT(*) NoOfOrders
FROM Sales.Orders
GROUP BY DATENAME(month,OrderDate);