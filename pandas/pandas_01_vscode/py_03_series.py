import pandas as pd

# declaring data as list
data = ["10","20", "30"]
#converting normal list data to series
slist=pd.Series(data)
print(slist)

# changeing defalult index numbers to custom names
slist1=pd.Series(data, index=["sale 2010","sale 2011", 'sale 2020'])
print(slist1)

#declaring data as Dict
data2={
    '2010':[10,1,2,2,3,3,5],
    '2020':[20,1,2,2,3,3,5],
    '2011':[301,2,2,3,3,5,2]
       }
# converting normal dict data to series using pandas
slist2=pd.Series(data2)
print(slist2)
# knowing the type of data like (series)
print(type(slist2))