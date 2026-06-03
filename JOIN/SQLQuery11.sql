-- FULL ANTI JOIN : return only rows that don't match in either tables.
-- get customers without orders and orders without customers
SELECT * FROM customers
FULL JOIN orders
ON id=customer_id
WHERE id IS NULL OR customer_id IS NULL