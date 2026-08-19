SELECT 
EmployeeID,
CONCAT(FirstName,' ',LastName) EmployeeName,
DATEDIFF(year,BirthDate,GETDATE()) AGE
FROM Sales.Employees


--find the avg shipping duration in days fro each month
SELECT 
FORMAT(OrderDate,'MMM') AS OrderMonth,
AVG(DATEDIFF(day, OrderDate, ShipDate)) AvgShipDate
FROM Sales.Orders
GROUP BY FORMAT(OrderDate,'MMM')

--find the no. days between each order and previous orders
SELECT 
OrderID,
OrderDate CurrentDate,
LAG(OrderDate) OVER (ORDER BY OrderDate) PreviousDate,
DATEDIFF(day,LAG(OrderDate)  OVER (ORDER BY OrderDate),OrderDate) NoOfDates
FROM Sales.Orders
