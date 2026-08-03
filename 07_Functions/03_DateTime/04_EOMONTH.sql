SELECT 
OrderDate,
EOMONTH(OrderDate) eo,
DATETRUNC(month,OrderDate) so --Trick to get Start of Month
FROM Sales.Orders