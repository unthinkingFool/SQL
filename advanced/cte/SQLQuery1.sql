-- generate a swquence of numbers from 1 to 20 
-- using recursive query

WITH series AS(
-- anchor query
	SELECT 
	1 AS number

UNION ALL
-- recursive query
	SELECT
	number+1
	FROM series
	WHERE number<20
)

SELECT * FROM series