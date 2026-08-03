--SHOW ALL ORDERS OF FEB
SELECT
[OrderID], DATENAME(month,OrderDate) AS Month
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders
WHERE DATENAME(month,OrderDate) = 'February';

--OPTIMISED
SELECT *
FROM Sales.Orders
WHERE MONTH(OrderDate)=2