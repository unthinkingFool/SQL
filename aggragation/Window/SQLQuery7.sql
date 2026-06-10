--find average sales across all orders. 
--And find the average sales for each product. 
--Additional profile details such as order ID and order date 
SELECT 
	OrderID,
	OrderDate,
	AVG(COALESCE(Sales,0)) OVER() AS avg_sales,
	AVG(COALESCE(Sales,0)) OVER(PARTITION BY ProductID) AS avg_product
FROM Sales.Orders