
----> Having clause
select customer_id,sum(amount) from payment
where customer_id not in (184,87,477)
group by customer_id

--->
select customer_id,sum(amount) from payment
group by customer_id
having sum(amount) > 100

--->
select store_id,count(*) from customer
group by store_id
having count(*) > 300

--->
select store_id,count(*) from customer
group by store_id
having count(customer_id) > 300

---->
select customer_id,count(*) from payment 
group by customer_id 
having count(*) >=40

---->>
select customer_id,sum(amount) from payment 
where staff_id = 2
group by customer_id 
having sum(amount) >= 100

---->Q1
select customer_id , sum(amount) from payment
where staff_id = 2
group by customer_id 
having sum(amount) >= 110

--->Q2
select count(title) from film
where title like 'J%'

--->Q3
select first_name,last_name from customer
where first_name like 'E%' AND address_id < 500
order by customer_id desc
limit 1

---> AS clause
select count(amount) as num_transactions
from payment

---->
select customer_id,sum(amount)  
from payment
group by customer_id

---->
select customer_id,sum(amount) as total_spent 
from payment
group by customer_id

--->
select customer_id,sum(amount)  
from payment
group by customer_id
having sum(amount) > 100

--->
select customer_id,sum(amount) as total_spent 
from payment
group by customer_id
having sum(amount) > 100

-----> we get error due to 3rd line
select customer_id,sum(amount) as total_spent 
from payment
group by customer_id
having total_spent > 100

--->
select customer_id,amount as new_name
from payment
where amount > 2

--->.get error
select customer_id,amount as new_name
from payment
where new_name > 2