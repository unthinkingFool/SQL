-- rank each order based on their sales from height to lowest 
-- additionally provide details such order id and order date
SELECT 
OrderID,
ProductID,
OrderDate,
Sales,
RANK() OVER (ORDER BY Sales DESC)



FROM Sales.Orders