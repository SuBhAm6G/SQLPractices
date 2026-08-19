SELECT
OrderID,
OrderDate,
DATEADD(year,2,OrderDate) twoyearhigher,
DATEADD(day,-10,OrderDate) tendaysbefore

FROM Sales.Orders