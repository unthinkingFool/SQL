	

-- create a view with a schema 'Sales'
CREATE VIEW Sales.view_monthly_summary AS
(
	SELECT 
	month(OrderDate) month,
	SUM(Sales) total_sales,
	COUNT(OrderID) orders,
	SUM(quantity) total_quantity
	FROM Sales.Orders
	GROUP BY month(OrderDate)
)

-- delete view
DROP VIEW view_monthly_summary

-- UPDATE THE VIEW 
-- 1> drop the prev view and recreate the view entirely
-- 2> T-SQL : TO CHECK IF THE VIEW IS NOT NULL , THEN DROP THE VIEW FIRST AND
--            CREATE THE VIRE ENTIRELY


SELECT
*
FROM view_monthly_summary