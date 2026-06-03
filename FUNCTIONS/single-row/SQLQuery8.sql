-- find customers whose first names contain LEADING or TRAILING spaces. 
SELECT 
first_name,
TRIM(first_name) AS trimmed

FROM customers
WHERE first_name!=TRIM(first_name)
