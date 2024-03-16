
/*
	T-SQL Basics
	- SELECT,
	- FROM,
	- COLUMN and TABLE ALIAS,
	- ORDER BY,
	- CONCATENATION,
	- LITERAL VALUES
*/

select * from Person.Person;
select firstname, lastname from Person.Person;
select firstname as 'Prenume', lastname from Person.Person;
select firstname as 'Prenume', lastname from Person.Person order by FirstName desc;
select firstname as 'Prenume', lastname from Person.Person order by FirstName, LastName;	-- ordoneaza alfabetic crescator mai intai dupa FirstName apoi dupa LastName (ordinea importanta!)

select firstname + ' ' + lastname as 'FullName' from Person.Person;
select lastname + ', ' + firstName as 'FullName' from Person.Person;
