-- analyze customer loyalty by ranking customers
-- based on the average number of days between orders. 
SELECT 
CustomerID,
AVG(COALESCE(date_until_next_order,0))  avg_days,
RANK() OVER(ORDER BY AVG(COALESCE(date_until_next_order,0))DESC) 

FROM(
	SELECT 
	OrderID,
	CustomerID,
	OrderDate currentdate,
	LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) NEXToRDER,
	DATEDIFF(DAY,OrderDate,LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate)) date_until_next_order
	FROM Sales.Orders
	
) T
GROUP BY CustomerID
