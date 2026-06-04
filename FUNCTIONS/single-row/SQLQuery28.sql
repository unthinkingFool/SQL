-- calculate the age of employees
SELECT 
EmployeeID,
FirstName,
LastName,
BirthDate,
DATEDIFF(YEAR,BirthDate,GETDATE() ) AS Age
FROM Sales.Employees