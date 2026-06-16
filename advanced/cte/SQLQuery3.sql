-- show the employee hierarchy 
-- by displaying each employee's level within the organization. 

WITH rank AS(
--anchor query
	SELECT
	EmployeeID,
	FirstName,
	ManagerID,
	1 AS level
	
	FROM Sales.Employees
	WHERE ManagerID IS NULL 

UNION ALL 
-- recursive query
	SELECT 
	e.EmployeeID,
	e.FirstName,
	e.ManagerID,
	level +1 
	
	FROM Sales.Employees e 
	INNER JOIN rank r
	ON e.ManagerID=r.EmployeeID

)
SELECT 
*
FROM rank