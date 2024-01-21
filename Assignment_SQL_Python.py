# Assignment

import psycopg2 as pg2

conn=pg2.connect(database='Testme',user='postgres',password='root')

cur=conn.cursor()

cur.execute("""create table course_admin(
               course_id  integer,
               course_duration varchar(10),
               course_fee decimal(4,0))""")
conn.commit()
cur.close()

#########################

import psycopg2 as pg2
# Craete a connectiom with Postresql

conn=pg2.connect(database='Testme', user='postgres', password='root')

cur=conn.cursor()

cur.execute("Insert into course_admin(course_id,course_duration,course_fee) values(6,'1week',2000)");

cur.execute("Insert into course_admin(course_id,course_duration,course_fee) values(7,'4week',8000)");

cur.execute("Insert into course_admin(course_id,course_duration,course_fee) values(8,'8week',9000)");

cur.execute("Insert into course_admin(course_id,course_duration,course_fee) values(9,'1week',1000)");

cur.execute("Insert into course_admin(course_id,course_duration,course_fee) values(11,'14week',3000)");

cur.execute("Select * from courses")
cur.fetchone()
cur.fetchmany()

conn.commit()
conn.close()
conn.close()
