import pandas as pd
import mysql.connector

conn=mysql.connector.connect(host='localhost',
      username='root',
      password='',
      database='analytics_lab')

cursor=conn.cursor()

#insert record
insert_qrery="insert into sales values(%s,%s,%s,%s,%s,%s,%s)"

data=(2000,'2006-10-21','Asia','Laptop',40000,30000,10000)
cursor.execute(insert_qrery,data)
conn.commit()

query="select * from sales"
df=pd.read_sql(query,conn)
print("inserted record \n",df,"\n")
'''
#update record
update_query="""UPDATE sales 
SET ORDER_DATE='2005-11-29' 
WHERE ORDER_ID=2000"""

cursor.execute(update_query)
conn.commit()
print("record updated!\n")
cursor.close()

#print data
query="select * from sales"
df=pd.read_sql(query,conn)
print("\n",df,"\n")

#delete record
delete_query="delete from sales where ORDER_ID=2000"
cursor.execute(delete_query)

conn.commit()
print("record deleted!")

#print data
query="select * from sales"
df=pd.read_sql(query,conn)
print("\n",df,"\n")'''
cursor.close()
conn.close()