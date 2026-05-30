-- TOP : restrict the number of rows

-- retrieve the top 3 customers with highest scores
SELECT TOP 3 *
FROM customers
ORDER BY score DESC