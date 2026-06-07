--generator reports showing the total sales for each category:
--- High if the sales are higher than 50
--- Medium if the sales are between 20 and 50
--- Low if the sales are equal to or lower than 20
--Sort the categories from highest sales to lowest.

SELECT Category,SUM(Sales) AS total_sales
FROM(
	SELECT 
		OrderID,
		Sales,
	CASE WHEN Sales >50 THEN 'High'
		 WHEN Sales > 20 AND Sales <=50 THEN 'Medium'
		 ELSE 'Low'
	END AS Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY total_sales DESC