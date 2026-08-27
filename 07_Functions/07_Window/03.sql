SELECT
OrderID,
OrderDate,
-- ACROSS ALL ORDERS
SUM(Sales) OVER() TotalSales
FROM Sales.Orders
-----------------------------
SELECT
OrderID,
OrderDate,
ProductID,
-- TOTAL SALES FOR EACH PRODUCT
SUM(Sales) OVER(PARTITION BY ProductID) TotalSalesByProduct
FROM Sales.Orders