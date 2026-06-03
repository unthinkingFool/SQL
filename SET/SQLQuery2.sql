--UNION ALL : return all rows from both queries , including duplicates


SELECT 
	CustomerID AS id,
	FirstName,
	LastName
FROM Sales.Customers

UNION ALL

SELECT 
	EmployeeID,
	FirstName,
	LastName
FROM Sales.Employees