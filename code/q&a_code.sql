

select 
FirstName,
MiddleName,
FirstName + ' ' + ISNUll(middleName, '*') as ReplaceWithISNULL,
FirstName + ' ' + Coalesce(middleName, NULL, 'Not null') as ReplaceWithCOALESCE
from Person.Person;

--isnull only accepts 2 parameters (replace null value with smth else)
--coalesce is more versatile


select * 
from Production.Product

select
distinct * 
from Production.Product
--look at all columns and return unique
--BUT NO GOOD RESULT (distinct has some limitations)
-- good option -> CTE, temp tables, etc

select
	CustomerID,
	SalesOrderID,
	OrderDate
from Sales.SalesOrderHeader
where CustomerID = 29825
--aggregates



select
	CustomerID,
	SalesOrderID,
	OrderDate
from Sales.SalesOrderHeader
where YEAR(OrderDate) = 2013
-- same as
select
	CustomerID,
	SalesOrderID,
	OrderDate
from Sales.SalesOrderHeader
where orderDate >= '2013-01-01' and year(orderdate) < 2014


select 
FirstName, 
LastName
from Person.Person
where LEFT(lastName, 1) = 'S'