-- rank the customers on their total amount of sales
SELECT 
*,
RANK() OVER(ORDER BY TOTAL_SALE DESC) rnk
FROM(
	SELECT 
		CustomerID,
		SUM(Sales) TOTAL_SALE 
	FROM Sales.Orders
	GROUP BY CustomerID
)t
