-- DATENAME : to get the name of a part of a date 
SELECT 
	OrderID,
	CreationTime,
	DATENAME(day, CreationTime) as Day,
	DATENAME(month, CreationTime) as Month,
	DATENAME(weekday, CreationTime) as WeekDay
	

FROM Sales.Orders