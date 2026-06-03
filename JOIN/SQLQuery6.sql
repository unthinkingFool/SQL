-- LEFT JOIN : returns all rows from the left and only matching rows from the right. 
--Get all customers along with their orders, including those who are without orders.
SELECT 
	id,
	first_name,
	country,
	score,
	order_id,
	order_date,
	sales
FROM customers
LEFT JOIN orders
ON customers.id=orders.customer_id