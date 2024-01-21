-------> CHECK
create table employees(
	emp_id serial  primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	birthdate date check(birthdate > '1900-01-01'),
	hire_date date check(hire_date > birthdate),
	salary integer check(salary > 0)
)

insert into employees(first_name ,last_name ,birthdate ,hire_date ,salary )
values ('Jose','Portilla','1990-01-03','2010-01-01',100)

------>