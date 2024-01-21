----> Mathematical Functions
select * from film

select rental_rate/replacement_cost from film

select rental_rate + replacement_cost from film

select rental_rate - replacement_cost from film

select rental_rate *replacement_cost from film

select rental_rate % replacement_cost from film

select rental_rate ^ replacement_cost from film

select |/ rental_rate  from film

select ||/ rental_rate  from film

----->
select round(rental_rate/replacement_cost,2) from film

--->
select round(rental_rate/replacement_cost,4)*100 from film

---->
select round(rental_rate/replacement_cost,4)*100 as percent_cost from film

--->
select 0.1 * replacement_cost as deposit
from film
