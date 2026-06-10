-- find all orders where sales are higher than the average sales across all orders. 
SELECT * 
FROM (
	SELECT 
		OrderID,
		OrderDate,
		ProductID,
		Sales,
		AVG(COALESCE(Sales,0)) OVER() as avg
	FROM Sales.Orders
)T
WHERE Sales>avg