import pandas as pd

df= pd.read_csv('sales_data.csv')
print('Sales Dataset')
print(df,'\n')

#look at the data ,operation after loading

print(df.head(3),'\n') #print first 5 rows default
print(df.tail(3),'\n') #print last 5 rows default
print(df.shape) #print rows,cols
print('\n',df.info()) #print dtype memory usage,null
print('\n', df.columns)
print('\n',df.describe()) #statistics


#selecting data
print(df['Product']) #select one colums with 1D array
print(df[['Product', 'Cost']]) #multiple cols selection with 2D array
print(df.iloc[0],"\n")
print(df.loc[0])
print(df[(df['Revenue']>100000) & (df['Region']=='America')]) #sorting or filtering then selecting

#Handling missing values
print(df.isnull().sum())
df['Revenue'].fillna(df['Revenue'].mean(), inplace=True)
df.dropna(inplace=True)
#print(df)

#data type conversion
df['Date'] = pd.to_datetime(df['Date'])
df['Revenue'].fillna(df['Revenue'].mean(), inplace=True)

print(df.info())
df['Profit-Margin']=df['Profit']/df['Revenue']
#print("\n",df)

#sorting
df.sort_values(by='Revenue', ascending=True, inplace=True)
#print("\n",df)

#groupby
df['Revenue'] = df['Revenue'].astype("Int64")
f=df.groupby('Product').agg({'Revenue' : 'sum', 'Profit' : 'sum'})
print(f)

#drop duplicates
df.drop_duplicates(inplace=True)
df.rename(columns={'Product' :"TYPE"}, inplace=True)
print(df)
df.to_csv("cleaned_sales_data.csv", index=False)