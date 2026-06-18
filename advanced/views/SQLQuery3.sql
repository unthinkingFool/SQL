-- provide a view that combines details from 
-- - orders- products- customers- employees
CREATE VIEW Sales.order_details AS
(
    SELECT 
           o.OrderID
          ,p.Product
        --  ,CustomerID
        --  ,SalesPersonID
          ,o.OrderDate
        --  ,ShipDate
        --  ,OrderStatus
        --  ,ShipAddress
        --  ,BillAddress
        --  ,p.Price
        --  ,CreationTime
            ,COALESCE(c.FirstName,'') +' ' +COALESCE(c.LastName,'') AS CustomerName
            ,c.Country CustomerCountry
            ,COALESCE(e.FirstName,'')+' '+COALESCE(e.LastName,'') AS SalesPersonName
            ,e.Department
            ,o.Quantity
            ,o.Sales
    FROM Sales.Orders o
    LEFT JOIN Sales.Products P
    ON P.ProductID=o.ProductID
    LEFT JOIN Sales.Customers c
    ON c.CustomerID=o.CustomerID
    LEFT JOIN Sales.Employees e
    ON e.EmployeeID=o.SalesPersonID
)

SELECT 
* 
FROM Sales.order_details