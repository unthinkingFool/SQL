--CTAS

SELECT
	DATENAME(month,OrderDate) order_month,
	COUNT(OrderID) total_orders
INTO Sales.Month_orders

FROM Sales.Orders
GROUP BY DATENAME(month,OrderDate)

SELECT
*
FROM Sales.Month_orders

DROP TABLE Sales.Month_orders