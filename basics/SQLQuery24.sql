-- UPDATE : to update info in any existing row 

-- change the score of custoner with id 6 to 0
UPDATE customers
SET score=0
WHERE id=6

-- change the score of the customer with ID 4 to 0 and update the country to UK.
UPDATE customers
SET score=0,country='UK'
WHERE id=4

-- update all customers with a null score by setting their score to 0
UPDATE customers
SET score =0
WHERE score IS NULL

SELECT * FROM customers


INSERT INTO customers 
VALUES (7,'Hehe','UAE',NULL),(8,'Hoho','Uganda',NULL)