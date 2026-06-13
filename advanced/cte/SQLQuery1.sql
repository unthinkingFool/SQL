-- step-1 : find the total sales per customer : STANDALONE CTE
WITH cte_total_sales AS 
(
	SELECT 
	CustomerID,
	SUM(Sales) 	AS salesSUM
	FROM Sales.Orders
	GROUP BY CustomerID
)

-- step-2 : find the last order date or per customer : STANDALONE CTE
, cte_last_order AS
(
	SELECT 
	CustomerID,
	MAX(OrderDate) last_order 
	FROM Sales.Orders
	GROUP BY CustomerID
	
)

-- step-3 : rank the customers based on total sales per customer : NESTED CTE
,cte_rank AS 
(
	SELECT
	*,
	RANK() OVER(ORDER BY salesSUM DESC)  rank
	FROM cte_total_sales cts
)

-- step-4 : segment customers based on their total sales
,cte_segment AS
(
	SELECT 
	*,
	CASE WHEN salesSUM > 100 THEN 'HIGH'
		 WHEN salesSUM >50 THEN 'MEDIUM'
		 ELSE 'LOW' 
	END segment
	FROM cte_total_sales cts
)

-- main query

SELECT 
*
FROM Sales.Customers c
LEFT JOIN cte_total_sales cts  ON cts.CustomerID=c.CustomerID
LEFT JOIN cte_last_order clo ON clo.CustomerID=c.CustomerID
LEFT JOIN cte_rank cr ON cr.CustomerID=c.CustomerID
LEFT JOIN cte_segment cs ON cs.CustomerID=c.CustomerID