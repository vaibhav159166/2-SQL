create table student11
(
student_id SERIAL primary key,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
homeroom_number SERIAL NOT NULL,
phone Serial not null unique ,
email varchar(200) unique,
graduation_year serial);

select * from student
;

create table teacher
(
teacher_id SERIAL primary key,
first_name VARCHAR(150) NOT NULL,
last_name VARCHAR(150) NOT NULL,
homeroom_number SERIAL NOT NULL,
phone Serial not null ,
email varchar(200) unique
)

insert into student11 values
(1,'Rahul','Galande',5,778855443,'Rahulgalande@gmail.com')

select * from student11

insert into teacher values
(1,'Chandrashekar','Gotge',5,777555789,'Chandrashekargatke@gmail.com')

select * from teacher