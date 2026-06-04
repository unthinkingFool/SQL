-- show all orders that were placed during the month of February. 
SELECT 
DATENAME(MONTH,CreationTime) AS month,
COUNT(*) AS total_sales
FROM Sales.Orders
GROUP BY DATENAME(MONTH,CreationTime)
HAVING DATENAME(MONTH,CreationTime)='February'