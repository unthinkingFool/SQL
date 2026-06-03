/* Find the average score for each country, 
considering only customers with a score not equal to zero, 
and return only those countries with an average score greater than 430. 
*/
SELECT 
country,
AVG(score) AS average_score
FROM customers

--customers with a score not equal to zero
WHERE score!=0
-- Find the average score for each country
GROUP BY country
--only those countries with an average score greater than 430
HAVING AVG(score)>430
