-- RANK customerts based on their total sales
SELECT 
	CustomerID,
	SUM(Sales) total_sales,
	RANK() OVER(ORDER BY SUM(Sales) DESC) AS rankCustomer
FROM Sales.Orders
GROUP BY CustomerID