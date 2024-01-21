select * from customer

select customer_id,
case 
	when (customer_id <= 100 ) then 'Premium'
	when (customer_id between 100 and 200 ) then 'Plus'
	else 'Normal'
END
from customer

--->
select customer_id,
case 
	when (customer_id <= 100 ) then 'Premium'
	when (customer_id between 100 and 200 ) then 'Plus'
	else 'Normal' 	
END
as Cust_Category
from customer

---->
select customer_id,
case customer_id
	when 2 then 'Winner'
	when 5 then 'Second  Place'
	else 'Normal'
end 
as raffle_results
from customer

--->
select * from film
--
select  
case rental_rate
	when 0.99 then 1
	else 0
end
from film

---->
select 
sum(case rental_rate
	when 0.99 then 1
	else 0
end) AS number_of_bargains
from film

--------->
select 
sum(case rental_rate
	when 0.99 then 1
	else 0
end) AS bargains,
sum(case rental_rate
   when 2.99 then 1
   else 0
end) as regular
from film

---->
select 
sum(case rental_rate
	when 0.99 then 1
	else 0
end) AS bargains,
sum(case rental_rate
   when 2.99 then 1
   else 0
end) as regular,
sum(case rental_rate
   when 4.99 then 1
   else 0
end) as premium
from film































