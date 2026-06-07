-- list of all details for customers who have not placed any orders
SELECT * FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON c.CustomerID=o.CustomerID
WHERE o.CustomerID IS NULL
