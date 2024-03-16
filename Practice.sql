

select
	GETDATE()						as systemTime,
	DATEPART(YEAR, Getdate())		as systemYear,
	YEAR(Getdate())					as systemYear2,
	Month(Getdate())				as systemMonth,
	FirstName
from Person.Person

--gettin more familiar => 4, 5 ways to do similar things
--good dev => PERFORMANT query