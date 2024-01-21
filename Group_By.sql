------>  Group by
select customer_id from payment
group by customer_id
order by customer_id

----
select customer_id,sum(amount) from payment
group by customer_id

----->
select customer_id,sum(amount) from payment
group by customer_id
order by sum(amount)

---->
select customer_id,sum(amount) from payment
group by customer_id
order by sum(amount) desc

----->
select customer_id ,staff_id,sum(amount) from payment
group by staff_id,customer_id

----> 
select customer_id ,staff_id,sum(amount) from payment
group by staff_id,customer_id
order by customer_id

----->
select date(payment_date) , sum(amount) from payment
group by date(payment_date)

------>
select date(payment_date) , sum(amount) from payment
group by date(payment_date)
order by sum(amount) desc

--->
select staff_id,count(amount) from payment
group by staff_id

---->
select rating,avg(replacement_cost) from film
group by rating

--->
select customer_id,sum(amount) from payment
group by customer_id
order by sum(amount) desc
limit 5;
