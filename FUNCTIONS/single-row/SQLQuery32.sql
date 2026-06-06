-- display the full name of customers in a single field by merging
-- their first and last names and add 10 bonus points to each customer's score
SELECT 
CustomerID,
FirstName,
LastName,
CONCAT(COALESCE(FirstName,''),COALESCE(LastName,'')) AS full_name,
Score,
COALESCE(Score,0)+10 AS transformed_score

FROM Sales.Customers