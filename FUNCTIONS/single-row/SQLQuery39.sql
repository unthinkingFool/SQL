-- find the average scores of customers and treat nulls as zero. 
-- Additionally provide details such as customer ID and last name. 
SELECT 
CustomerID,
LastName,
Score,
AVG(CASE WHEN Score IS NULL THEN 0 
	 ELSE Score 
END) OVER () AS avg_score


FROM Sales.Customers
