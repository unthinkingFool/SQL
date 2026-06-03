SELECT * FROM customers

-- name contains  m  as first letter
WHERE first_name LIKE 'M%'

-- name contains  n  as first letter
WHERE first_name LIKE '%N'

-- name contains r anywhere in the name
WHERE first_name LIKE '%r%'