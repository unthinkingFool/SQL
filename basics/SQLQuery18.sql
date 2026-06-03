/* Create a new table called persons with columns:
- ID
- person name
- birth date
- phone
*/
CREATE TABLE persons(
	id INT NOT NULL, -- CONSTRANT : NOT TO BE NULL
	person_name VARCHAR(50) NOT NULL,-- CONSTRANT : NOT TO BE NULL
	birth_date DATE, -- no constraint
	phone VARCHAR (15) NOT NULL,
	-- need to define a primary key to connect with other tables
	CONSTRAINT pk_persons PRIMARY KEY (id)
)

SELECT * FROM persons