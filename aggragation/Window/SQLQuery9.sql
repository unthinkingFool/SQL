--calculate the moving average of sales for each product over time. 
--calculate the moving average of sales for each product over time. including only the next order

SELECT 
	OrderID,
	ProductID,
	Sales,
	(OrderDate),
	avg(Sales) OVER(partition by ProductID ) avg_sales,
	avg(Sales) OVER(partition by ProductID ORDER BY OrderDate) moving_or_running_avg,
	avg(Sales) OVER(partition by ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) rolling_avg

FROM Sales.Orders