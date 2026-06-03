-- using salesdb, retrieve a list of all orders,
-- with the related customer, product, and employee details. 
/*For each order, display:
- order ID
- customer's name
- product name
- sales amount
- product price
- sales person's name
*/

SELECT
	Sales.Orders.OrderID,
	Sales.Customers.FirstName AS customer_name,
	Sales.Products.Product,
	Sales.Orders.Sales,
	Sales.Products.Price,
	Sales.Employees.FirstName AS salesperson_name

FROM Sales.Orders
LEFT JOIN Sales.Employees ON SalesPersonID=EmployeeID
LEFT JOIN Sales.Customers ON Sales.Orders.CustomerID=Sales.Customers.CustomerID
LEFT JOIN Sales.Products ON Sales.Orders.ProductID=Sales.Products.ProductID