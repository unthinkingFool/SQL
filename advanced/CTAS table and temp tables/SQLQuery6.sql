-- temporary tables: TMP

SELECT
*

INTO #Orders_temp
FROM Sales.Orders

SELECT* FROM #Orders_temp