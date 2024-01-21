----->JOINS
---> inner join 
select * from payment
inner join customer
on payment.customer_id = customer.customer_id

---->
select payment.payment_id,payment.customer_id,customer.first_name 
from payment
inner join customer
on payment.customer_id = customer.customer_id

--->full outer join
select * from customer 
full outer join payment
on customer.customer_id = payment.customer_id
where customer.customer_id is null
or payment.payment_id is null

--->
select film.film_id,title,inventory_id,store_id
from film 
left join inventory 
on inventory.film_id = film.film_id

---->
select film.film_id,title,inventory_id,store_id
from film 
left join inventory 
on inventory.film_id = film.film_id
where inventory .film_id is null

---->
select district,email from address
inner join customer
on address.address_id = customer.address_id
where district = 'California'

---->
select title,first_name,last_name from film_actor
inner join actor
on film.actor_id = film_actor.actor_id
inner join film
on film_actor.film_id = film._film_id
where first_name = 'Nick' and last_name='Wahlberg'
