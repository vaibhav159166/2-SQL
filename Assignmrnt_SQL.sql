-- 1. 
select * from cd.facilities;

-- 2.

select name,membercost from cd.facilities;
-- 3.

select * from cd.facilities
where membercost>0;

-- 4.

select * from cd.facilities
where monthlymaintenance >= membercost*50 and membercost> 0;

-- 5.

select * from cd.facilities
where name like '%Tennis%';

-- 6.
select * from cd.facilities
where facid=1 or facid=5;

select * from cd.facilities
where facid in (1,5);

-- 7.
select * from cd.members
where joindate between '2012-09-01'and '2012-09-30';

-- 8.
select distinct(surname) from cd.members
order by surname 
limit 10;

-- 9.
select joindate from cd.members
order by joindate desc
limit 1;

-- 10.
select count(*) from cd.facilities
where guestcost >=10;

-- 11.

select facid,sum(slots) from cd.bookings
where starttime >= '2012-09-01'
group by facid
order by sum(slots);

-- 12.
select facid,sum(slots) as Total
from cd.bookings
group by facid
having sum(slots)>1000
order by facid
;

--13.

select starttime,name from cd.bookings 
INNER JOIN cd.facilities
on cd.bookings.facid=cd.facilities.facid
where starttime='2012-09-21' or name like 'Tennis %' 
order by starttime;

-- 14.

select * from cd.bookings
inner join cd.members
on cd.members.memid = cd.bookings.memid
where cd.members.firstname = 'David'
and cd.members.surname  = 'Farrell'

