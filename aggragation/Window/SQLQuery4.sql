-- window 
-- find the total sales for each product and order status ,
-- additionally provide details such order id , order date
SELECT 
OrderID,
ProductID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER(PARTITION BY ProductID,OrderStatus) AS window_Sales

FROM Sales.Orders