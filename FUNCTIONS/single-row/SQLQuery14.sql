SELECT 
	OrderID,
	CreationTime,
	'2025-04-06' AS hardcoded,
	GETDATE() Today

FROM Sales.Orders