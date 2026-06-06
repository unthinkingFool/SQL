-- find the avg score of the customers
select 

avg(coalesce(Score, 0))
from Sales.Customers