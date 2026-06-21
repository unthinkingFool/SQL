-- updating statistics
SELECT 
    SCHEMA_NAME(t.schema_id) AS SchemaName,
    t.name AS TableName,
    s.name AS StatisticName,
    sp.last_updated AS LastUpdate,
    DATEDIFF(day, sp.last_updated, GETDATE()) AS LastUpdateDay,
    sp.rows AS 'Rows',
    sp.modification_counter AS ModificationsSinceLastUpdate
FROM sys.stats AS s
JOIN sys.tables AS t
    ON s.object_id = t.object_id
CROSS APPLY sys.dm_db_stats_properties(s.object_id, s.stats_id) AS sp
ORDER BY sp.modification_counter DESC;

-- Update statistics for a specific automatically created system statistic
UPDATE STATISTICS Sales.dbCustomers _WA_Sys_00000004_3A4CA8FD;
GO

-- Update all statistics for the Sales.DBCustomers table
UPDATE STATISTICS Sales.dbCustomers;
GO

-- Update statistics for all tables in the database
EXEC sp_updatestats;