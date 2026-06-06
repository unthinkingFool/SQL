-- sort the customers from the lowest to highest scores ,
-- with NULL appearing last
SELECT 
*,
CASE WHEN Score IS NULL THEN 1 ELSE 0 END flag
FROM Sales.Customers
ORDER BY
    CASE WHEN Score IS NULL THEN 1 ELSE 0 END,Score ASC;