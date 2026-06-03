-- get all customers along with their orders , 
-- but only customers who have placed an order without INNER JOIN
SELECT * FROM customers
FULL JOIN orders
ON id=customer_id
WHERE id IS NOT NULL AND customer_id IS NOT NULL 


SELECT * FROM customers
LEFT JOIN orders
ON id=customer_id
WHERE customer_id IS NOT NULL