-- where : to retrieve data under specific condition before aggregation
SELECT
	first_name,
	country
FROM customers

-- retrieve customers with score >=500 )
-- WHERE score>=500

-- retrieve customers from Germany
WHERE country='Germany'