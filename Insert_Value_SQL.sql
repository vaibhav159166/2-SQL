--->Insert Quary
insert into account(username,password,email,created_on)
values
('Vaibhav','root','Vaibhav@sanjivani.org',CURRENT_TIMESTAMP)
	
insert into account(username,password,email,created_on)
values
('Vaibhav1','root1','Vaibhav@sanjivani.org',CURRENT_TIMESTAMP)	
	
select * from account	

---->
insert into job(job_name)
values('DATA SCIENTIST')
	
select * from job
	
-->
insert into account_job(job_id,user_id,hire_date)
values(1,1,CURRENT_TIMESTAMP)

create table employees(
emp_id serial primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
birthdate date check (birthdate > '1900-01-01'),
hire_date date check (hire_date > birthdate),
salary integer check(salary>0))

-- erorr
insert into employees(
first_name,
last_name,
birthdate,
hire_date,
salary)
values
('Jose','Portilla','1899-11-03','2010-01-01',40)

insert into employees(
first_name,
last_name,
birthdate,
hire_date,
salary)
values
('Jose','Portilla','1990-11-03','2010-01-01',40)




