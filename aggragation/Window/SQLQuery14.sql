-- ntitle : to entile the rows in some buckets
SELECT 
	OrderID,
	ProductID,
	Sales,
	NTILE(3) OVER(ORDER BY Sales DESC) tHREEbUCKET,
	NTILE(2) OVER(ORDER BY Sales DESC) tWObUCKET,
	NTILE(1) OVER(ORDER BY Sales DESC) oNEbUCKET
FROM Sales.Orders