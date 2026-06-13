-- show all customer details and find the total orders of each customers
SELECT 
*
FROM Sales.Customers c
left join ( SELECT 
				CustomerID,
				COUNT(*) total_orders 
				FROM Sales.Orders 
				GROUP BY CustomerID
			) o
ON c.CustomerID=o.CustomerID