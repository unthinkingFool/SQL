--find the average shipping duration in days for each month. 
SELECT 
	MONTH(OrderDate),
	avg(DATEDIFF(DAY,OrderDate,ShipDate)) AS AVG_DURATION
FROM Sales.Orders
GROUP BY MONTH(OrderDate)