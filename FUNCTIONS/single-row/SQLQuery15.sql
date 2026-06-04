-- DATAPART : to extract the expected part form the date
SELECT 
	OrderID,
	CreationTime,
	DATEPART(week, CreationTime) as Week,
	DATEPART(quarter, CreationTime) as quarter,
	DATEPART(second, CreationTime) as Second,
	DATEPART(minute, CreationTime) as Minute,
	DATEPART(hour, CreationTime) as Hour,
	DATEPART(day, CreationTime) as Day,
	DATEPART(month, CreationTime) as Month,
	DATEPART(year, CreationTime) as Year

FROM Sales.Orders