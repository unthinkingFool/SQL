-- retrieve a list of customers' first names, removing the first character. 
SELECT 
	first_name,
	SUBSTRING(TRIM(first_name), 2,LEN(TRIM(first_name))) AS sub_name
FROM customers