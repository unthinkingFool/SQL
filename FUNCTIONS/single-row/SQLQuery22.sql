-- formatting date : yyyy-MM-dd / MM-dd-yyyy / dd-MM-yyyy
-- sql format : yyyy-MM-dd HH:mm-ss

SELECT 
	OrderID,
	CreationTime,
	FORMAT(CreationTime,'dd-MM-yyyy') AS format_first,
	FORMAT(CreationTime,'dd/MM/yyyy') AS format_second,
	FORMAT(CreationTime,'dd') AS format_day,
	FORMAT(CreationTime,'ddd') AS format_day_2,
	FORMAT(CreationTime,'dddd') AS format_day_3,
	FORMAT(CreationTime,'MM') AS format_month,
	FORMAT(CreationTime,'MMM') AS format_month_2,
	FORMAT(CreationTime,'MMMM') AS format_month_3,
	FORMAT(CreationTime,'yyyy') AS format_year,
	FORMAT(CreationTime,'yy') AS format_year_2

FROM Sales.Orders