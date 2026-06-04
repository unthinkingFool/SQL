-- DATETRUNC : to get only that part from the begining ,
-- we are interested in the part determined part

-- THIS IS DONE TO EXTRACT DATA ON A CERTAIN LEVEL
SELECT 
	OrderID,
	CreationTime,
	DATETRUNC(second, CreationTime) as Second_TRUNC,
	DATETRUNC(minute, CreationTime) as Minute_TRUNC,
	DATETRUNC(hour, CreationTime) as Hour_TRUNC,
	DATETRUNC(day, CreationTime) as Day_TRUNC,
	DATETRUNC(month, CreationTime) as Month_TRUNC,
	DATETRUNC(year, CreationTime) as Year_TRUNC
	

FROM Sales.Orders