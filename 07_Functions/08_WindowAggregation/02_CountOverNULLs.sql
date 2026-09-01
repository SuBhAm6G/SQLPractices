SELECT 
*,
COUNT(CustomerID) OVER() TotalCustomers,
COUNT(Score) OVER() TotalScore
FROM Sales.Customers