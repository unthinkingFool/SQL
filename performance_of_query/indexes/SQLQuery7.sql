-- index usage tabel
 SELECT
        tbl.name AS TableName,
        col.name AS ColumnName,
        -- dublicate index check
        COUNT(*) OVER(PARTITION BY tbl.name, col.name) AS ColumnCount,
        idx.name AS IndexName,
        idx.type_desc AS IndexType,
        idx.is_primary_key,
        idx.is_unique,
        idx.is_disabled,
        s.user_seeks,
        s.user_scans,
        s.user_lookups,
        COALESCE(s.last_user_seek, s.last_user_scan) AS LastUpdate
    FROM sys.indexes idx
    JOIN sys.tables tbl ON idx.object_id = tbl.object_id
    JOIN sys.index_columns ic ON idx.object_id = ic.object_id AND idx.index_id = ic.index_id
    JOIN sys.columns col ON ic.object_id = col.object_id AND ic.column_id = col.column_id
    LEFT JOIN sys.dm_db_index_usage_stats s 
        ON s.object_id = idx.object_id AND s.index_id = idx.index_id

-- missing indexes details
SELECT
* 
FROM sys.dm_db_missing_index_details