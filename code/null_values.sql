

/*
	Working with NULL values
	Top and Distinct functions
	Where clause


	NULL = unknown value
	Ex: 1 + null = null (1 + unknown = unknown)

*/

-- working with null values
-- this doesn t work (if MIddleName is NULL => entire expression will be NULL)
select
	FirstName,
	MiddleName,
	LastName,
	FirstName + ' ' + middleName + ' ' + LastName as FullName
from Person.Person

/*
	when you create a table -> specify what the data type is of that column
							-> specify if a column can be NULL or not
	In this table MIddlename can accept null
*/

--if middlename = null => return ''
select
	FirstName,
	MiddleName,
	LastName,
	FirstName + ' ' + isnull(middleName, '') + ' ' + LastName as FullName
from Person.Person

--COALESCE = return the 1st not null value from a list
select
	FirstName,
	MiddleName,
	LastName,
	FirstName + ' ' + Coalesce(middlename, '') + ' ' + LastName as FullName
from Person.Person


select top(10) *
from Sales.SalesOrderDetail

select top(10) 
	SalesOrderID,
	SalesOrderDetailID
from Sales.SalesOrderDetail

--return 10% of entire rows of data
select top(10) percent *
from Sales.SalesOrderDetail

-- DISTINCT = eliminates duplicates
select distinct(color)
from Production.Product

