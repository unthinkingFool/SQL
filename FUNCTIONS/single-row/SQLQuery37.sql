--Find average scores of customers and treat nulls as zero. 
--Additionally provide details with the search customer ID and last name 
SELECT 
	
	c.CustomerID,
	c.LastName,
	Score,
	CASE WHEN Score IS NULL THEN 0
		 Else Score
	END score_final,
	avg(CASE WHEN Score IS NULL THEN 0
		 Else Score
	END ) OVER() avg_score
	
FROM Sales.Customers c
