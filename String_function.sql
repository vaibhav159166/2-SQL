----String functions															>
select * from customer

---->
select length(first_name) from customer

--->
select first_name || last_name from customer

---->
select first_name ||' ' || last_name from customer

--->
select first_name ||' ' || last_name as full_name
from customer

--->
select upper(first_name) ||' ' || upper(last_name) as full_name
from customer

---->
select left(first_name,1) ||last_name || '@gmail.com' from customer

---->
select right(first_name,1) ||last_name || '@gmail.com' from customer

--->
select lower(left(first_name,1)) ||lower(last_name) || '@gmail.com' from customer

--->
select lower(left(first_name,1)) ||lower(last_name) || '@gmail.com' as custom_email
from customer
