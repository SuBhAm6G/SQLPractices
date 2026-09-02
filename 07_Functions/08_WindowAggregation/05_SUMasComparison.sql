--PART TO WHOLE ANALYSIS
SELECT
OrderID,
ProductID,
Sales,
SUM(Sales) OVER() TotalSales,
CAST(ROUND((CAST (Sales AS float) / SUM(Sales) OVER()) * 100, 2) AS varchar) + ' %' AS PercentageOfTotal
FROM Sales.Orders