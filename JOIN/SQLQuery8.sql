-- FULL JOIN : turn all rows from both tables.
--Get all customers, then all partners, even if there is no match 
SELECT* FROM customers
FULL JOIN orders
ON id=customer_id