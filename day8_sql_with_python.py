import pandas as pd
import mysql.connector
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="analytics_lab"
)
query="select * from sales"

df=pd.read_sql(query,conn)

print(df.head())
print(df.groupby('REGION')['REVENUE'].sum())
print(df.groupby('PRODUCT')['REVENUE'].sum())
print("Total Revenue :",df['REVENUE'].sum())
conn.close()
