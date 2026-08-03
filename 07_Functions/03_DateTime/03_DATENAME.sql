SELECT
OrderDate,
ShipDate,
CreationTime,
DATENAME(month, CreationTime) mon_th,
DATENAME(week, CreationTime) wee_k,
DATENAME(weekday, CreationTime) wee_k_day,
DATENAME(quarter, CreationTime) quar_ter,
DATENAME(hour, CreationTime) hou_r
FROM Sales.Orders;