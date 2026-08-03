SELECT
CreationTime,
DATETRUNC(minute,CreationTime),
DATETRUNC(hour,CreationTime),
DATETRUNC(month,CreationTime)
FROM Sales.Orders;


SELECT
DATETRUNC(month,CreationTime),
COUNT(*)
FROM Sales.Orders
GROUP BY DATETRUNC(month,CreationTime)