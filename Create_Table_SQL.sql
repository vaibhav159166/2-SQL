create table account(
	user_id SERIAL PRIMARY KEY,
	username varchar(50) UNIQUE NOT NULL,
	password varchar(50) NOT NULL,
	email varchar(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
)

---->
create table job(
	job_id SERIAL PRIMARY KEY,
	job_name varchar(200) UNIQUE NOT NULL
)

--->
create table account_job(
	user_id integer REFERENCES account(user_id),
	job_id integer REFERENCES job(job_id),
	hire_date TIMESTAMP)
	
--->
create table student(
	student_id integer primary key, 
	first_name varchar(50) not null,
	last_name varchar(50) not null, 
	homeroom_number integer , 
	phone varchar(20) not null ,
	email varchar(50) not null, 
	graduation_year integer not null)
	
create table teachers(
	teacher_id integer primary key,
	first_name varchar(50) not null , 
	last_name varchar(50) not null,
	homeroom_number integer unique, 
	department varchar(50) not null, 
	email varchar(50) not null,  
	phone varchar(20) not null
)	