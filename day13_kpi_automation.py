import pandas as pd
import mysql.connector

def get_data() :
    conn=mysql.connector.connect(
        host='localhost',
        user='root',
        password='',
        database='analytics_lab'
    )

    query='select * from sales'

    df=pd.read_sql(query,conn)
    
    conn.close()
    return df

df=get_data()
print(df)

def calculate_KPIs(df) :
    kpis={}

    kpis['total_revenue'] = df['REVENUE'].sum()
    kpis['total_profit'] = df['PROFIT'].sum()
    return kpis

kpis= calculate_KPIs(df)

print("\n--- KPI REPORT ---")
for key, value in kpis.items():
    print(key, ":", value)