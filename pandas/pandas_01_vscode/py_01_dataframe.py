import pandas as pd

# declaring data as dictionary
data={'name':"karthick",
      'location':'trichy', 'role':'trainer'}

#creating dataframe
df=pd.DataFrame(data, index=[0])
print(df) #printing dataframe

#changeing index from default to assigned
df=pd.DataFrame(data, index=['data_01'])
print(df)

#selecting dataframe by columns - selected two out of three with modified index name
df=pd.DataFrame(data, columns=["name",'role'], index=['data_01'])
print(df)