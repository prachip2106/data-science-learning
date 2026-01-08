import pandas as pd
from sklearn.preprocessing import StandardScaler, MinMaxScaler, OneHotEncoder

df=pd.read_csv('cleaned_sales_data.csv')
print(df)

mm = MinMaxScaler()
new_cols = ['Revenue', 'Cost', 'Profit']
df[new_cols] = mm.fit_transform(df[new_cols])
print(df[new_cols])

std= StandardScaler()
df[new_cols] = std.fit_transform(df[new_cols])
print(df[new_cols])

le = OneHotEncoder(sparse_output=False)
Region_encoded = le.fit_transform(df[["Region"]])
region_df = pd.DataFrame(Region_encoded, columns=le.get_feature_names_out(['Region']))
df = pd.concat([df,region_df], axis=1)
print(le.categories_)
print(df)