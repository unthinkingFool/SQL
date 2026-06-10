/*
Find the total number of orders.
Find the total number of orders for each customer.
Additionally provide details such as order ID and order date. 
*/
SELECT 
	OrderID,
	CustomerID,
	OrderDate,
	Sales,
	COUNT(*) OVER () total_orders,
	COUNT(*) OVER (PARTITION BY CustomerID) individual_orders

FROM Sales.Orders