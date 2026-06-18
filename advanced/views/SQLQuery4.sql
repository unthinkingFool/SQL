-- provide a view for the EU sales team
-- that combines the details from all tables and 
-- excludes data related to the USA. 

DROP VIEW IF EXISTS Sales.order_details_modified_EU;

CREATE VIEW Sales.order_details_modified_EU AS
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
    WHERE c.Country!='USA'
)

select
*
from Sales.order_details_modified_EU