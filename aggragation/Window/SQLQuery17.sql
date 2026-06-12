-- TIME SERIES ANALYSIS : YOY AND MOM 
-- year over year analysis
-- month over month analysis

-- Analyze the month-over-month performance 
-- by finding the percentage change in sales 
-- between the current and previous months. 
SELECT 
*,
CASE WHEN lagging IS NULL THEN 0
ELSE CAST((total_sales-lagging) AS FLOAT)*100/lagging
END percentage

FROM (
	SELECT 

	MONTH(OrderDate) month,
	SUM(Sales) total_sales,
	LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) lagging
	FROM Sales.Orders 
	GROUP BY MONTH(OrderDate)
)t 