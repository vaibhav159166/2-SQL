create table countries(
country_id varchar(3),
country_name varchar(45),
region_id decimal(10,0)
);

--
select * from countries;

create table dup_countries AS
(select * from countries)

select * from dup_countries;

create table if not exists countries(
country_id varchar(3) NOT NULL,
country_name varchar(45) NOT NULL,
region_id decimal(10,0) NOT NULL
);

--
create table job
(
job_id serial not null,
job_title varchar(20),
min_salary serial not null,
max_salary serial check(max_salary<=25000) not null
)

select * from job

insert into job values(12,'Data',1200,23000)

insert into job values(12,'Data',1200,26000)

create table if not exists countries(
country_id varchar(3),
country_name varchar(45)
	check(country_name IN ('india ','Italy','China')),
region_id decimal(10,0)
);

create table if not exists countries(
country_id varchar(3) unique primary key,
country_name varchar(45),
region_id decimal(10,0)
);


create table job1
(
job_id serial not null primary key ,
job_title varchar(20) default ' ',
min_salary decimal(6,0) default 8000,
max_salary decimal(6,0) default NULL
)

create table if not exists countries(
country_id varchar(3) not null unique primary key,
country_name varchar(45),
region_id decimal(10,0)
);

create table if not exists countries(
country_id serial primary key ,
country_name varchar(45),
region_id decimal(10,0)
);

-- country id , region id be unique
create table if not exists countries(
country_id serial primary key unique ,
country_name varchar(45) unique,
region_id decimal(10,0) unique
);

--
create table job_history(
emp_id serial not null primary key ,
start_date date not null,
end_date date not null,
job_id serial not null,
dept_id decimal(4,0) default null,
foreign key(job_id) references job1(job_id)
)


create table addres(
location_id varchar(10) not null,
street_address varchar(20) not null,
city varchar(10),
state_provice varchar(10),
country_name varchar(10)
)

