-- DATEADD -> to transform date with a definite interval
SELECT 
FORMAT(CreationTime,'yyyy-MM-dd') AS date,
DATEADD(YEAR,3,FORMAT(CreationTime,'yyyy-MM-dd')) AS THREE_year_later,
DATEADD(month,-3,FORMAT(CreationTime,'yyyy-MM-dd')) AS THREE_month_before,
DATEADD(day,3,FORMAT(CreationTime,'yyyy-MM-dd')) AS THREE_day_later
FROM Sales.Orders