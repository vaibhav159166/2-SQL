----> update
update account
set last_login = current_timestamp

-->returning affected rows
select * from account 

update account
set last_login = created_on
returning user_id,last_login

--->
update account_job
set hire_date=account.created_on
from account
where account_job.user_id=account.user_id

-->
update account
set last_login=current_timestamp
returning email,created_on,last_login

--->
insert into job(job_name)
values ('Cowboy')

select * from job

--
delete from job
where job_name='Cowboy'
returning job_id,job_name

--->ALTER 
create table information(
	info_id SERIAL primary key,
	title varchar(500) not null,
	person varchar(50) not null unique)

select * from information
---> change table name
alter table information
rename to new_info

select * from new_info

--->
alter table  new_info
rename column person to people

select * from new_info

--->error
insert into new_info(title)
values ('Some New Title')

insert into new_info(title)
values ('Some_New_Title')

---->
alter table new_info
alter column people drop not null

insert into new_info(title)
values ('Some New Title')

----->
select * from new_info

---->drop
alter table new_info
drop column people

select * from new_info

-->error
alter table new_info
drop column people

----> not error
alter table new_info
drop column if exists people

 









	
	
	
	
	
	
	
	
	