# -*- coding: utf-8 -*-
"""
Created on Sat Sep  9 09:02:45 2023

@author: Vaibhav Bhorkade
"""


import psycopg2 as pg2

conn=pg2.connect(database='Testme',user='postgres',password='root')

cur=conn.cursor()

cur.execute('Select * from courses;')
rows=cur.fetchall()
conn.commit()
conn.close()

for row in rows:
    print(row)
    

#######################################################

import psycopg2 as pg2

conn=pg2.connect(database='Testme',user='postgres',password='root')

cur=conn.cursor()

cur.execute('Select course_instructor,count(*) from courses GROUP BY course_instructor;')
rows=cur.fetchall()
conn.commit()


for row in rows:
    print(row)
    
conn.close()