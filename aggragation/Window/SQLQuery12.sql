-- find the lowest 2 customers based on their total sales
SELECT * FROM(
	SELECT CustomerID,SUM(Sales) TOTAL_SALE ,RANK() OVER(ORDER BY SUM(Sales)  ASC) RANK
	FROM Sales.Orders
	GROUP BY CustomerID
)t 
WHERE RANK<=2