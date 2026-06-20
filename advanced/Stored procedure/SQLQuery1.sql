-- step 1: write a query
-- for customers of any country , find the total number of customers and average score
SELECT 
COUNT(*) total_customers,
AVG(Score) avg_score
FROM Sales.Customers
WHERE Country='USA'

--step 2 : turning this query into a stored procedure
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50)='USA'
AS
BEGIN
	BEGIN TRY

	--============================================
		-- variable declaration
		DECLARE @total_customers INT, @avg_score FLOAT;
	--============================================
		-- PREPARE AND CLEAN UP DATA
		IF EXISTS (SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country=@Country )
		BEGIN 
			PRINT('updating null to 0')
			UPDATE Sales.Customers 
			SET Score=0
			WHERE Score IS NULL AND Country=@Country;
		END

		ELSE s
		BEGIN
			PRINT('NO NULL SCORE DETECTED')
		END;

	--============================================
		-- for customers of any country , find the total number of customers and average score
		SELECT 
			@total_customers=COUNT(*) ,
			@avg_score=AVG(Score) 
		FROM Sales.Customers
		WHERE Country=@Country;
		PRINT 'total number of customers in '+@Country+ ' : '+ CAST(@total_customers AS NVARCHAR);
		PRINT 'total avg score of customers in '+@Country+ ' : '+CAST(@avg_score AS NVARCHAR);

	--==============================================
		-- FIND THE TOTAL NUMBER OF ORDERS AND TOTAL_SALES
		SELECT
			COUNT(OrderID) total_orders,
			SUM(Sales) total_sales
		FROM Sales.Orders o
		LEFT JOIN Sales.Customers c
		ON c.CustomerID=o.CustomerID
		WHERE c.Country=@Country;
	END TRY
	--==========================================
	-- ERROR HANDLING
	BEGIN CATCH
		PRINT('there is some error in the query : ')
		PRINT('ERROR MESSAGE : '+ERROR_MESSAGE())
		PRINT('ERROR NUMBER : '+CAST(ERROR_NUMBER(),NVARCHAR))
		PRINT('ERROR LINE : ' + ERROR_LINE()) 
	END CATCH

END

-- =================================================
-- step 3 : executing stored procedure
EXEC GetCustomerSummary @Country='Germany'


