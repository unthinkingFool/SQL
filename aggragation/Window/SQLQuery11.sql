-- find the top highest sales for each product
SELECT * 
FROM (
	SELECT 
		OrderID,
		ProductID,
		Sales,
		ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC) rnk
	FROM Sales.Orders
)T
WHERE rnk=1
