-- sort data by nested order by with multiple sorting condition
SELECT *
FROM customers
-- retrieve data of customers sort by country descending and score sorted in ascending
ORDER BY 
	country DESC,
	score ASC