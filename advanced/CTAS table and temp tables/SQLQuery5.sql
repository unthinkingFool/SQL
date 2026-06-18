-- TO GET REGULAR UPDATE IN CTAS:

IF OBJECT_ID('Sales.Month_orders','U') IS NOT NULL
	DROP TABLE Sales.Month_orders;

GO
SELECT
	DATENAME(month,OrderDate) order_month,
	COUNT(OrderID) total_orders
INTO Sales.Month_orders

FROM Sales.Orders
GROUP BY DATENAME(month,OrderDate)