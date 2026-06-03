-- REPLACE : (VARIABLE NAME, OLD VALUE , NEW VALUE)
-- remove dashes from a phone number
SELECT
'123-456-789' AS phone_no,
REPLACE('123-456-789', '-','') as CLEANED
