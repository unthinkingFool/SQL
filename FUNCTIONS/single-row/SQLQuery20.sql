-- how many orders were placed in each MONTH
SELECT 
	DATENAME(month,CreationTime) AS month,
	COUNT(*) AS total_sales
FROM Sales.Orders
GROUP BY DATENAME(month,CreationTime)
