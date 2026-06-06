-- ISNULL : replaces NULL with the specified replacement value.
-- COALESCE : returns the first non-NULL value from the given expressions.
select 
	ShipAddress,
	BillAddress,
	COALESCE(ShipAddress,BillAddress,'unknown') as shipAddress_transformed,
	COALESCE(BillAddress,ShipAddress,'unknown') as billAddress_transformed

from Sales.Orders