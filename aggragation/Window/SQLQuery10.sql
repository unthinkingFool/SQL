-- rank the orders based on their sales from highest to lowest

-- row number: assign unique rank for each of the row without handling the ties
-- rank : assign unique rank for each of the row as well as handling the ties and leaving gaps between
-- dense rank :  assign unique rank for each of the row as well as handling the ties and leaving no gaps between

SELECT 
	OrderID,
	ProductID,
	Sales,
	ROW_NUMBER() OVER(ORDER BY Sales DESC) AS row_number,
	RANK() OVER(ORDER BY Sales DESC) row_rank,
	DENSE_RANK() OVER(ORDER BY Sales DESC) row_dense_rank
FROM Sales.Orders