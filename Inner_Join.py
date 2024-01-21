# -*- coding: utf-8 -*-
"""
Created on Sat Sep  9 09:02:38 2023

@author: Vaibhav Bhorkade
"""

import psycopg2 as pg2

conn=pg2.connect(database='Testme',user='postgres',password='root')

cur=conn.cursor()

cur.execute("""select course_name,course_instructor,course_duration
            from courses
            INNER JOIN course_admin
            on courses.course_id=course_admin.course_id""")
rows=cur.fetchall()

for row in rows:
    print(row)
conn.commit()
cur.close()