SELECT 
CustomerID,
FirstName + ' ' + Coalesce(LastName,'') FullName,
CASE
	WHEN Country = 'Germany' THEN 'GR'
	WHEN Country = 'USA' THEN 'US'
	ELSE 'n/a'
END Countrycode
FROM Sales.Customers