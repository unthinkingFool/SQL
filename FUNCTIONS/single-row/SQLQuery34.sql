-- NULLIF : returns null if both values are equal , otherwise returns the first value
SELECT 
CustomerID,
OrderID,
Sales,
Quantity,
Sales/NULLIF(Quantity,0) AS price


FROM Sales.Orders