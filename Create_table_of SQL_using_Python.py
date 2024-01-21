# -*- coding: utf-8 -*-
"""
Created on Fri Sep  8 09:19:54 2023

@author: Vaibhav Bhorkade
"""

import psycopg2 as pg2

# create a connection with postgreSQL
conn=pg2.connect(database='Testme',user='postgres',password='root')

# establish connection and start cursor to be ready to query
cur=conn.cursor()

##execute a command : create courses table
cur.execute("""create table courses(
                course_id serial primary key,
                course_name varchar(50) unique not null,
                course_instructor varchar(100) not null,
                topic varchar(20) not null) 
            """)
            
# make the chages to the database persistent
conn.commit()

#close cursor and communication with the database
cur.close()
