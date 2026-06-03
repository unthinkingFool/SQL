-- Show a list of customers' first names together with their country in one column 
SELECT 
FirstName,
Country,
CONCAT(FirstName,' ',Country) AS demoConcat,
LOWER(FirstName) AS DemoLOWER
FROM Sales.Customers