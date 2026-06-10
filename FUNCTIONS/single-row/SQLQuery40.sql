--count how many times each customer has made an order with sales greater than 30. 
SELECT 

CustomerID,
COUNT(CASE WHEN Sales>30 THEN Sales ELSE NULL END)

FROM Sales.Orders
GROUP BY CustomerID