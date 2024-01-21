# -*- coding: utf-8 -*-
"""
Created on Sat Sep  9 08:07:45 2023

@author: Vaibhav Bhorkade

"""

import psycopg2 as pg2
# Craete a connectiom with Postresql

conn=pg2.connect(database='Testme', user='postgres', password='root')

cur=conn.cursor()

cur.execute("Insert into courses(course_name,course_instructor,topic) values('Analyzing Survay Data in Python','Shyam','Python')");

cur.execute("Insert into courses(course_name,course_instructor,topic) values('SQL','Ram','Julia')");

cur.execute("Insert into courses(course_name,course_instructor,topic) values('ChatGPT','Ganesh','Theory')");

cur.execute("Insert into courses(course_name,course_instructor,topic) values('R','jayesh','Python')");

cur.execute("Insert into courses(course_name,course_instructor,topic) values('Hypothesis Testing in python','jayesh','Python')");

cur.execute("Select * from courses")
cur.fetchone()
cur.fetchmany()

conn.commit()
conn.close()
conn.close()

#######################################################
