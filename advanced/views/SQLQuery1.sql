-- find the running total of sales for each month
WITH cte_sum AS
(
	SELECT 
	month(OrderDate) month,
	SUM(Sales) total_sales,
	COUNT(OrderID) orders,
	SUM(quantity) total_quantity
	FROM Sales.Orders
	GROUP BY month(OrderDate)
)

SELECT
month, 
total_sales,
SUM(total_sales) OVER(ORDER BY month) running_total
FROM cte_sum