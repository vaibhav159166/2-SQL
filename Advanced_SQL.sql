----> Advanced SQL
show all

show  timezone

select now()

select TIMEOFDAY()

select CURRENT_DATE

select extract(year from payment_date) as myyear
from payment

select extract(month from payment_date) as payment_month
from payment

select extract(QUARTER  from payment_date)
as pay_month
from payment

select age(payment_date) from payment

select to_char(payment_date,'')
from payment

select to_char(payment_date,'MM/dd/YYYY')
from payment

select to_char(payment_date,'dd-mm-yyyy')
from payment

----->
select distinct(to_char(payment_date,'MONTH'))
from payment

------>
select count(*) from payment
where extract(dow from payment_date)=1