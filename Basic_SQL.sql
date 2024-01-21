select distinct first_name from customer

----->
select count(*) from film 
where rental_rate > 4 AND replacement_cost >= 19.99
AND rating='R';

----->
select count(*) from film 
where rating='R' or rating='PG-13'

----->
select * from film 
where rating != 'R'

----->
select email from customer
where first_name='Nancy' AND last_name='Thomas'

----->
select description from film 
where title='Outlaw Hanky';

----->
select phone from address
where address='259 Ipoh Drive'
--------------------------------------------------
----->   Ordered By
select * from customer
order by first_name

----->
select * from customer
order by first_name ASC 

----->
select * from customer
order by first_name DESC

------>
select * from customer 
order by store_id,first_name

----->
select store_id,first_name,last_name from customer
order by store_id DESC ,first_name ASC

----->LIMIT
select * from payment
order by payment_date DESC
LIMIT 5; 

------>
select * from payment
where amount !=0.00
order by payment_date DESC
LIMIT 5; 

------>
select customer_id from payment
order by payment_date ASC
limit 10;

------.
select title,length from film 
order by length ASC
limit 5;

---->
select count(title) from film
where length <= 50

--------> between operator
select * from payment 
where amount between 8 AND 9;

----->
select count(*) from payment
where amount between 8 and 9;

----->
select count(*) from payment
where amount NOT between 8 and 9;

----->
select * from payment
where payment_date between '2007-02-01' and '2007-02-15'

------> IN operator
select distinct(amount) from payment
order by amount

---->
select * from payment
where amount in (0.99,1.98,1.99)

--->
select count(*) from payment
where amount in (0.99,1.98,1.99)

----->
select count(*) from payment
where amount not in (0.99,1.98,1.99)

----->
select * from customer
where first_name in ('John','Jake','Julie')

----->
select * from customer
where first_name not in ('John','Jake','Julie')

----->
select count(distinct district) from address

---->
select distinct district from address

----->
select count(*) from film
where rating='R' AND replacement_cost between 5 and 15;

------>
select min(replacement_cost) from film

----->
select max(replacement_cost) from film

----->
select avg(replacement_cost) from film

----->
select min(replacement_cost) , max(replacement_cost) from film

----->
select round (avg(replacement_cost),2) from film

---->
select round (avg(replacement_cost),4) from film

----->
select sum(replacement_cost) from film
