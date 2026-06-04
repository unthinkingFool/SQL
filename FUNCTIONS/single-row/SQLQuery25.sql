-- convert/cast :to change the data type 
SELECT 
CreationTime,
CONVERT(DATE,CreationTime) AS [creation time as date only],
CAST(123 AS VARCHAR) AS cast_demo

FROM Sales.Orders