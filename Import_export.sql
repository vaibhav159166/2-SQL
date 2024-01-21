--------> importing and exporting data
create table simple(
a integer,
b integer,
c integer
)

select * from simple

----->
create table countries(
country_id varchar(3),
country_name varchar(45),
region_id decimal(10,0)
);

create table dup_countries as (
select * from countries
);

select * from dup_countries

--->create table countries and set constraints to null
create table if not exists countries(
country_id varchar(3)  not null,
country_name varchar(45) not null,
region_id decimal(10,0) not null
);

---->create table name as job & 
--check whether the max_salary amount exceeding the upper limit 25000
create  table if not exists jobs(
	job_id varchar(2),
	job_title varchar(20),
	min_salary integer,
	max_salary integer check(max_salary <= 25000)
);

select * from jobs

--->create table countries and make sure that no countries except
--- Italy,India,China will be entered in the table
create table if not exists countries(
country_id varchar(3)  not null,
country_name varchar(45) not null check(country_name in ('Italy','India','China')),
region_id decimal(10,0) not null
);

--->create table countries and 
---make sure that no duplicate data against column country_id 
create table if not exists countries(
country_id varchar(3)  not null unique,
country_name varchar(45) not null ,
region_id decimal(10,0) not null
);

----> create table jobs and make default vakue for job_title is blank, min_salary is 8000
--- max_salary is null will be entered automatically at the time of insertion 
----if no value is assigned for the specific columns 
create  table if not exists jobs(
	job_id varchar(2) not null unique primary key,
	job_title varchar(20) not null default ' ',
	min_salary integer default 8000,
	max_salary integer default NULL 
);

---->make sure that country_id column which will not contain any duplicate data at the time of insertion
create table if not exists countries(
country_id varchar(3) not null unique primary key,
country_name varchar(45) not null ,
region_id decimal(10,0) not null
);

--->create table countries and make sure that column country_id will 
--- be unique  and stored an auto incremented value
create table if not exists countries(
country_id serial primary key ,
country_name varchar(45) not null ,
region_id decimal(10,0) not null
);

---> country_id , region_id will be unique
create table if not exists countries(
country_id varchar(3)  not null primary key unique,
country_name varchar(45) default null,
region_id decimal(10,0) not null unique
);

--->create table job_history
create  table if not exists job1(
	job_id varchar(2) primary key,
	job_title varchar(20) not null default ' ',
	min_salary integer default 8000,
	max_salary integer default NULL 
);

create table if not exists job_history(
	employee_id decimal(6,0) not null primary key,
	start_date date not null,
	end_date date not null,
	job_id varchar(10) not null ,
	department_id decimal(4,0) default null,
	foreign key (job_id) references job1(job_id)
)

---->




















