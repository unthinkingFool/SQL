-- find the female employees whose salaries are greater
-- than the salaries of any male employees
SELECT 
EmployeeID,
FirstName,
Gender,
Salary
FROM Sales.Employees
WHERE Gender ='F' and Salary > ANY(SELECT Salary FROM Sales.Employees WHERE Gender ='M')