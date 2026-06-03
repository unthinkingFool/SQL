-- RIGHT JOIN : return all rows from the right, and only matching rows from the left.
--Get all customers along with their orders, including orders without matching customers. 
SELECT* FROM customers
RIGHT JOIN orders
ON id=customer_id