SELECT 
FORMAT(OrderDate,'MMM yy'),
COUNT(*) AS total_order
FROM Sales.Orders
GROUP BY FORMAT(OrderDate,'MMM yy')