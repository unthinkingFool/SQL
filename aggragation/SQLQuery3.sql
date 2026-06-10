-- COUNT : the number of total rows
-- SUM : the sum total of every value
-- AVG : the avg value of the data 
-- MAX : the highest value of the data
-- MIN : the lowest value of the data

SELECT 
COUNT(*) AS total_orders,
SUM(sales) AS total_sales,
AVG(sales) AS avg_sales,
MAX(sales) AS max_sale,
MIN(sales) AS min_sale

FROM orders