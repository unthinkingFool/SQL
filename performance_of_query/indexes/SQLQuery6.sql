-- list of all indexes on a specific table
sp_helpindex 'Sales.dbCustomers'

-- monitoring index usage
SELECT * from sys.indexes