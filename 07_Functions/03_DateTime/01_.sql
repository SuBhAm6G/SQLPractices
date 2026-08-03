SELECT
OrderDate,
ShipDate,
YEAR(ShipDate),
MONTH(ShipDate),
DAY(ShipDate)
FROM Sales.Orders