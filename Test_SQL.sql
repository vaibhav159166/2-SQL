/*Q1. Write a SQL statement to create a table named 
jobs including columns job_id, job_title, min_salary, max_salary and check 
whether the max_salary amount exceeding the upper limit 25000.*/
create table job(
job_id serial unique primary key,
job_title varchar(50) not null,
min_salary varchar(10),
max_salary integer check(max_salary > 25000)
)
;
/* Q2. Write a SQL statement to change the email column of the employees 
table with 'not available' for all employees. */
Alter table job add email varchar(30);

/* Q3. Write a SQL statement to rename the table jobs to jobs_new. */
ALTER table job
rename to job_new
;

/*Q.4 Write a SQL statement to add a column dept_id to the table locations.*/

Alter table job_new add dept_id serial;

/*Q.5 Write a SQL statement to insert a record with your own value into the table 
jobs_new against each column.*/

insert into job_new values(1,'Student','23000',26000,'vai@gmail.com',01)
;

select * from job_new;

/* Q.6 Write a query to display the names (job_id,dept_id) .*/

select job_id,dept_id from job_new;

/*Q.7 Write a query to get the maximum total salaries payable to employees.*/

select max(max_salary) from job_new;

/* Q.8 Write a query to get the average salary and number of employees are working.*/
/*create table if not exists job(
job_id serial unique primary key,
job_title varchar(50) not null,
min_salary integer,
max_salary integer check(max_salary > 25000)
)*/
select avg(max_salary),count(*) from job_new;

/*Q.9 Create a table manager_details comprises of manager_id,manager_name
,dept_id and Write a query to make a join with two tables jobs_new and
manager_details*/

create table if not exists manager_details(
manager_id serial unique primary key,
manager_name varchar(50) not null,
dept_id serial
)

select * from job_new
INNER JOIN manager_details
on job_new.dept_id=manager_details.dept_id;

/* Q.10 Write a SQL subquery to find the emp_id  of all employees  
from jobs_new table who works in the IT department. */

select job_id from job_new
where dept_id=01;



