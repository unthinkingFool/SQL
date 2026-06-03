-- EXCEPT : return all distinct rows from the first query that are not present in the second query. 
SELECT 
	CustomerID AS id,
	FirstName,
	LastName
FROM Sales.Customers

EXCEPT

SELECT 
	EmployeeID,
	FirstName,
	LastName
FROM Sales.Employees