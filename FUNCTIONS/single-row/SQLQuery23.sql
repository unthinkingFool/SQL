--Show creation time using the following format: 
--Day Wed Jan Q1 2025 12:30:56 PM
SELECT
	CreationTime,
	'Day '+FORMAT(CreationTime,'ddd MMM')+' Q'+DATENAME(QUARTER,CreationTime)+' '+DATENAME(year,CreationTime)+' '+FORMAT(CreationTime,'HH:mm:ss')+FORMAT(CreationTime, ' tt') AS expected
FROM Sales.Orders