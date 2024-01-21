----->LIKE operator
select * from customer
where first_name like 'J%'

----->
select count(*) from customer
where first_name like 'J%'

---------->
select * from customer
where first_name like 'J%' AND  last_name like 'S%'

---->case sensitive (no output)
select * from customer
where first_name like 'j%' AND  last_name like 's%'

----> for case insensitive we use ilike
select * from customer
where first_name ilike 'j%' AND  last_name ilike 'j%'

----->
select * from customer
where first_name ilike 'j%' AND  last_name ilike 's%'

----->
select * from customer 
where first_name like '%er%'

------>
select * from customer 
where first_name like '%her%'

----->
select * from customer 
where first_name like '_her%'

----->
select * from customer 
where first_name like 'A%'

---->
select * from customer 
where first_name like 'A%'
order by last_name

----->
select * from customer 
where first_name like 'A%' AND last_name NOT like 'B%'
order by last_name

----->
select count(amount) from payment
where amount >= 5.00

---->
select count(first_name) from actor
where first_name like 'P%'

----->
select count(title) from film
where title like '%Truman%'
