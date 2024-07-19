import pandas as pd

data= pd.read_csv('Computers.csv')
print(data)

df=pd.DataFrame(data)
print(df) # to print datas from dataframe - it prints only top 5 and bottom 5
print(df.to_string())  # it prints entire dataframe
print(df[["sno",'price','ram']].head(5)) # to print specific column name from the dataframe also restrict with head
print(df.loc[0]) # to print/select row  
print(df.loc[0:5]) # to print/select range of rows

print(df.loc[0]) # to print/select row as per position 
print(df.loc[0:5]) # to print/select range of rows as per position
print(df.iloc[df.index[0:2]])# to print/select range of rows by using index

filterdlist=df[df["ram"]>16] # to select entire columns data based on conditions
print(filterdlist)

filterdlists=df[(df["ram"]>16) & (df["screen"]>15)] # to select entire columns data based on two condtions
print(filterdlists)


