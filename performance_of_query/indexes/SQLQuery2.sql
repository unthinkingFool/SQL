-- suppose we are retrieving data from the customers through their last name
-- this can be sometimes slow , so we can create a non clustered index for that column
SELECT
*
FROM Sales.dbCustomers
WHERE LastName='Brown'

-- creating non clustered index on last name column
CREATE NONCLUSTERED INDEX idx_dbCustomers_LastName ON Sales.dbCustomers (LastName)

