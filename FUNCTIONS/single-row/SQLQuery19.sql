--EOMONTH : to set every date to the last date of the month
SELECT 
	CreationTime,
	EOMONTH(CreationTime) AS date_with_end_of_month
FROM Sales.Orders