-- GROUP BY :  combines row with the same value
-- aggregates a column by another column

-- example : total score by country
SELECT 
country, -- the category
SUM(score) AS total_score -- aggregation 
FROM customers
GROUP BY country