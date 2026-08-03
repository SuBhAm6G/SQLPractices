SELECT
OrderID,
CreationTime,
FORMAT(CreationTime, 'dd') dd,
FORMAT(CreationTime, 'ddd') ddd,
FORMAT(CreationTime, 'dddd') dddd,
FORMAT(CreationTime, 'MM') MM,
FORMAT(CreationTime, 'MMMM') MMMM,
FORMAT(CreationTime, 'dd-MM-yyyy') ddMMyyyy
FROM Sales.Orders

SELECT
OrderID,
CreationTime,
FORMAT(CreationTime,'dd ') + FORMAT(CreationTime,'ddd MMM ') + 'Q' + DATENAME(quarter, CreationTime) + FORMAT(CreationTime,' yyyy hh:mm:ss tt') AS CustomFormat
FROM Sales.Orders
