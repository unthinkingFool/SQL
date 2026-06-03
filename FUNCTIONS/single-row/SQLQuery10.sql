-- LEFT : to extract characters from the left/ start
-- RIGHT : to extract characters from the end / right
SELECT 
first_name,
LEFT(first_name,3) AS first_3_letter,
RIGHT(first_name,3) AS last_3_letter
FROM customers