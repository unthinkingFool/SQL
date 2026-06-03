-- INNER JOIN : returns only the matching rows from both tables
--example : Get all the customers along with their orders, but only for customers who have placed an order.
SELECT 
	customers.id,
	customers.first_name,
	customers.country,
	customers.score,
	orders.order_id,
	orders.order_date,
	orders.sales
FROM customers 
INNER JOIN orders
ON customers.id=orders.customer_id