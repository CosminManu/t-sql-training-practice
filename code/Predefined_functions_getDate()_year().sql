

/*
	Functions and expressions
	Basic addtion, mathematical expression
	String manipulation funcitons, expressions
	Work with:
		- Dateadd, 
		- Datediff,
		- Year / Month
*/

select *
from Sales.SalesOrderDetail;

select UnitPrice, OrderQty,
	UnitPrice + 10 as plus10, 
	UnitPrice * 2 as Doubled,
	UnitPrice * OrderQty as Total
from Sales.SalesOrderDetail


select FirstName,
	LEFT(firstName, 3) as First_3_letters,
	RIGHT(firstName, 3) as Last_3_letters
from Person.Person


select FirstName,
	LEFT(firstName, 3)			as First_3_letters,
	RIGHT(firstName, 3)			as Last_3_letters,
	UPPER(FirstName)			as upperFirstName,		-- all characters UPPERCASE
	LOWER(firstName)			as lowerFirstName,		-- all characters lowercase
	UPPER(RIGHT(firstName, 1))	as upper_last_letter
from Person.Person


select FirstName,
	REPLACE(firstName, 'a', '*')	 as replaceA, -- replaces both A and a
	LEN(firstName)					 as LengthOfName
from Person.Person

select
	GETDATE()						as systemTime,
	DATEPART(YEAR, Getdate())		as systemYear,
	YEAR(Getdate())					as systemYear2, -- returns only the year
	Month(Getdate())				as systemMonth

--gettin more familiar => 4, 5 ways to do similar things
--good dev => PERFORMANT query

select
	OrderDate,
	DATEADD(day, 3, OrderDate)				as DueDate,
	DATEDIFF(DAY, OrderDate, ShipDate)		as DaysToShip -- difference
from Sales.SalesOrderHeader


select
	OrderDate,
	DATEADD(day, 3, OrderDate)				as DueDate,		-- add 3 days
	DATEDIFF(DAY, OrderDate, ShipDate)		as DaysToShip, -- difference
	GETDATE()								as Today,
	DATEDIFF(MONTH, OrderDate, GETDATE())	as MonthsFromOrder -- difference at month level
from Sales.SalesOrderHeader
order by DaysToShip
-- ETL extract the data, transform it and load it in new destination