SELECT
OrderDate,
ShipDate,
CreationTime,
DATEPART(month, CreationTime) mon_th,
DATEPART(week, CreationTime) wee_k,
DATEPART(weekday, CreationTime) wee_k_day,
DATEPART(quarter, CreationTime) quar_ter,
DATEPART(hour, CreationTime) hou_r
FROM Sales.Orders;