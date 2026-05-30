-- to modify anydata table ----- need to use the ALTER command

/* Add a new column called Email to the Persons table. */

ALTER TABLE persons 
ADD email VARCHAR(50) NOT NULL

/* remove the column named phone from the data table*/

ALTER TABLE persons 
DROP COLUMN phone

SELECT * FROM persons