# -*- coding: utf-8 -*-
"""
Created on Fri Sep  8 08:28:40 2023

@author: Vaibhav Bhorkade
"""
### using postgreSQL in python

import psycopg2 as pg2

# create a connection with postgreSQL
conn=pg2.connect(database='dvdrental',user='postgres',password='root')

# establish connection and start cursor to be ready to query
cur=conn.cursor()

# pass in a PostgreSQL query as a string
cur.execute("select * from payment")

# return a tuple of the first row as a python objects
cur.fetchone() 

# return N number of rows
cur.fetchmany(10)

## return all rows at once
cur.fetchall()

## to save and index results,assign it to a variable
data = cur.fetchmany(10)

##don't forget to close the connection
# killing the kernal or shutting down jupyter will also close it
conn.close()




