-- HAVING : filter data afer aggregation 

-- retrieve the countries with the total score higher than 800
SELECT 
country,
SUM(score) AS total_score
FROM customers
GROUP BY country
HAVING SUM(score)>800