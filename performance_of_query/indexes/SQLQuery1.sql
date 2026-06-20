-- structure index :

-- copying the data to a new table for practicing index
SELECT 
*
INTO Sales.dbCustomers
FROM Sales.Customers

-- 
SELECT 
* 
FROM Sales.dbCustomers

-- creating index for the dbCustomers
CREATE CLUSTERED INDEX  idx_dbCustomer_CustomerID ON Sales.dbCustomers (CustomerID)

-- to delete / drop an index from a table
DROP INDEX idx_dbCustomer_CustomerID ON Sales.dbCustomers
