-- creating unique index for the product table
SELECT * FROM Sales.Products

CREATE UNIQUE NONCLUSTERED INDEX idx_products_Product 
ON Sales.Products (Product)

-- as there is unique non clustered index for the column product
-- this column can not have duplicate value
INSERT INTO Sales.Products
VALUES (109,'Caps','Clothing',100)