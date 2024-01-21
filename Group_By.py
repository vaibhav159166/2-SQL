# -*- coding: utf-8 -*-
"""
Created on Sat Sep  9 09:02:38 2023

@author: Vaibhav Bhorkade
"""

import psycopg2 as pg2

# create a connection with postgreSQL
conn=pg2.connect(database='Testme',user='postgres',password='root')

# establish connection and start cursor to be ready to query
cur=conn.cursor()

cur.execute('select course_instructor,count(*) from courses group by course_instructor;')
conn.commit()


rows=cur.fetchall()
conn.close()

for row in rows:
    print(row)
    
print(rows)

