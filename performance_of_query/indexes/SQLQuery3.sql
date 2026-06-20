-- composite index : non clustered index
SELECT 
*
FROM Sales.dbCustomers
WHERE Country ='USA' AND Score >500

-- creating composite index with multiple column like : Country , Score
CREATE INDEX idx_dbCustomers_CountryScore ON Sales.dbCustomers (Country,Score)