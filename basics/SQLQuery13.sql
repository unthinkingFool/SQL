/* retrieve the data of countries :
each customers having score more than 400
countries total_score more than 600
*/
SELECT 
country,
SUM(score) AS total_score
FROM customers
--each customers having score more than 400
WHERE score >400

GROUP BY country
--countries total_score more than 600
HAVING SUM(score) >600