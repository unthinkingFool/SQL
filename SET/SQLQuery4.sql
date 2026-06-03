-- INTERSECT : common rows from both queries
SELECT 
	CustomerID AS id,
	FirstName,
	LastName
FROM Sales.Customers

INTERSECT

SELECT 
	EmployeeID,
	FirstName,
	LastName
FROM Sales.Employees