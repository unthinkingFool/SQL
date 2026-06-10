-- check whether the table of orders contains any duplicate rows. 
select
	OrderID,
	COUNT(*) OVER(PARTITION BY OrderID) AS checkOrderID
FROM Sales.Orders
select
	OrderID,
	COUNT(*) OVER(PARTITION BY OrderID) AS checkOrderArchiveID
FROM Sales.OrdersArchive

-- here got the duplicate orders in OrdersArchive

SELECT *
FROM (
	select
		OrderID,
		COUNT(*) OVER(PARTITION BY OrderID) AS checkOrderArchiveID
	FROM Sales.OrdersArchive
)t 
WHERE checkOrderArchiveID>1