-- DATEDIFF : to calculate the difference between two dates

-- find out the shipping duration of each product
SELECT 
OrderID,
OrderDate,
ShipDate,
DATEDIFF(YEAR,OrderDate,ShipDate) AS date_diff_as_year,
DATEDIFF(month,OrderDate,ShipDate) AS date_diff_as_month,
DATEDIFF(day,OrderDate,ShipDate) AS date_diff_as_day
FROM Sales.Orders