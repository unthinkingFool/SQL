SELECT 
	OrderID,
	CreationTime,
	'2025-04-06' AS hardcoded,
	GETDATE() Today,
	YEAR(CreationTime) AS yearData,
	MONTH(CreationTime) AS monthData,
	DAY(CreationTime) AS dayData

FROM Sales.Orders