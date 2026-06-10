-- find the percentage contribution of each product's sales to the total sales. 
SELECT 
	OrderID,
	ProductID,
	SUM(Sales) OVER() AS total_sales,
	SUM(Sales) OVER(PARTITION BY ProductID) AS sales_product,
	(SUM(Sales) OVER(PARTITION BY ProductID)*100/SUM(Sales) OVER()) AS percentage_product_genre,
	ROUND(CAST(Sales as FLOAT)/SUM(Sales) OVER() *100,2) AS percentage_per_product
FROM Sales.Orders