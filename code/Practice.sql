

select
	OrderDate,
	DATEADD(day, 3, OrderDate)				as DueDate,		-- add 3 days
	DATEDIFF(DAY, OrderDate, ShipDate)		as DaysToShip, -- difference
	GETDATE()								as Today,
	DATEDIFF(MONTH, OrderDate, GETDATE())	as MonthsFromOrder -- difference at month level
from Sales.SalesOrderHeader
order by DaysToShip

-- ETL extract the data, transform it and load it in new destination
