--Insert data from customers table to persons table  : copy data from one table to another

INSERT INTO persons (id, person_name, birth_date,phone)

SELECT 
id, first_name,NULL,'UNKNOWN'
FROM customers

-- verify if executed correctly
SELECT * FROM persons


