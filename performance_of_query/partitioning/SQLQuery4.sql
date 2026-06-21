-- partitioning:
-- create a partition function
CREATE PARTITION FUNCTION partition_by_year (DATE)
AS RANGE LEFT FOR VALUES ('2023-12-31','2024-12-31','2025-12-31')

--check for partition function
SELECT
*
FROM sys.partition_functions


--create fileGroups
ALTER DATABASE SalesDB ADD FILEGROUP FG_2023;
ALTER DATABASE SalesDB ADD FILEGROUP FG_2024;
ALTER DATABASE SalesDB ADD FILEGROUP FG_2025;
ALTER DATABASE SalesDB ADD FILEGROUP FG_2026;

-- check for file groups 
SELECT
*
FROM sys.filegroups
WHERE type='FG'

-- creating datafiles
ALTER DATABASE SalesDB ADD FILE
(
	NAME =P_2023, --logical file name
	FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\P_2023.ndf'
) TO FILEGROUP FG_2023

ALTER DATABASE SalesDB ADD FILE
(
	NAME =P_2024, --logical file name
	FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\P_2024.ndf'
) TO FILEGROUP FG_2024

ALTER DATABASE SalesDB ADD FILE
(
	NAME =P_2025, --logical file name
	FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\P_2025.ndf'
) TO FILEGROUP FG_2025

ALTER DATABASE SalesDB ADD FILE
(
	NAME =P_2026, --logical file name
	FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL17.SQLEXPRESS\MSSQL\DATA\P_2026.ndf'
) TO FILEGROUP FG_2026

-- checking everything
SELECT
	fg.name FileGroup,
	mf.name LogisticFileName,
	mf.physical_name PhysicalFileName,
	mf.size/128 Size

FROM sys.filegroups fg
JOIN sys.master_files mf ON mf.data_space_id=fg.data_space_id 
where mf.database_id=DB_ID('SalesDB');

-- partition scheme
CREATE PARTITION SCHEME SchemePartitionByYear
AS PARTITION partition_by_year
TO (FG_2023,FG_2024,FG_2025,FG_2026)

-- CREATING PARTITION TABLE
CREATE TABLE Sales.OrdersPartition
(
	OrderID INT,
	OrderDate DATE,
	Sales INT
) ON SchemePartitionByYear(OrderDate)

-- INSERTING DATA INTO PARTITIONED TABLE
INSERT INTO Sales.OrdersPartition 
VALUES(1,'2024-11-20',10)

SELECT * FROM Sales.OrdersPartition