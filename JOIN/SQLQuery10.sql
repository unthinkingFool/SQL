-- RIGHT ANTI JOIN : return row from right that has no match in left
-- get the orders without matching customers

SELECT * FROM customers
RIGHT JOIN orders
ON id=customer_id
WHERE id IS NULL