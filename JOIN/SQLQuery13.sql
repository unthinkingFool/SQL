-- combines every row from left with every row from right,
-- all possible combinations - Cartesian joins

-- generate all possible combinatons of customers and orders
SELECT * FROM customers
CROSS JOIN orders
