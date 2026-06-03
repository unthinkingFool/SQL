-- LEFT ANTI JOIN : return row from left that has no match in right
-- get the customers who have not ordered

SELECT * FROM customers
LEFT JOIN orders
ON id=customer_id
WHERE customer_id IS NULL