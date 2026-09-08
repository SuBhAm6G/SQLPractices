--Assign Unique IDs to rows of Order Archieve
SELECT 
ROW_NUMBER() OVER(ORDER BY OrderID,OrderDate) UniqueID,
*
FROM Sales.OrdersArchive