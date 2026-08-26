SELECT 
COUNT(*) TotalOrders,
SUM(sales) TotalSales,
AVG(sales) AvgSales,
MAX(sales) HighestSale,
MIN(sales) LowestSale
FROM orders
-----------------
SELECT 
ProductID,
AVG(SALES) OVER(PARTITION BY ProductID) AvgProductSales
FROM Sales.Orders

-----------------------------
SELECT 
    ProductID,
    AVG(Sales) AS AvgProductSales,
    SUM(Sales) AS TotalSales
FROM Sales.Orders
GROUP BY ProductID;

