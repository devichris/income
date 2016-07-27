
truncate table yearlyearnings

insert into yearlyearnings
select sum("Money Earned")
       ,cast(datepart(month, [date]) as varchar) + '-' + cast(datepart(year, [date]) as varchar) as TheMonth
from summerearnings
group by datepart(year, [date]), datepart(month, [date])

