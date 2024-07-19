import pandas as pd

# declaring data as list
names = ['Alice', 'Bob', 'Charlie', 'David']


# creating dataframe using list
df=pd.DataFrame(names,columns=["name"])
print(df)

#changeing index from default to assigned
df=pd.DataFrame(names,columns=["name"], index=[22,33,44,55])
print(df)

#adding additional columns to the existing data
ages = [25, 30, 35, 40]
scores = [85, 90, 88, 92]

df['Age'] = ages
df['Score'] = scores

print(df)













# df['Score'] = df['Score'].replace(92, 'null')
df['Score']=(df['Score'] ).replace({92:None})
print(df)





# data={'name':["karthick","praveen", "Vinitha","Santhos", "Achu"],
#       'location':['trichy','gandthi market','allur','Pallakkadu','Srirengam'], 'role':['trainer',"Trainee","Trainee","Trainee","Trainee"]}

# df=pd.DataFrame(data, index=["AI_01","AI_01",2,3,4])

# print(df)
# # df=pd.DataFrame(data, index=['data_01'])
# # print(df)

