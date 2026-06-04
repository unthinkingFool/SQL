-- count the total sales in every month of the tables only using the time of creation
SELECT 
 DATETRUNC(MONTH,CreationTime) AS date_trunc,
 COUNT(*) AS total_count
FROM Sales.Orders
GROUP BY DATETRUNC(MONTH,CreationTime);


SELECT CreationTime FROM Sales.Orders