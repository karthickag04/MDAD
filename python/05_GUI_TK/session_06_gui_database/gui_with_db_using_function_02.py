import os
from tkinter import *
import mysql.connector

app=Tk()

app.title("Student Mark Entry")
app.geometry("800x600+300+60")



def MyDBConnection():
    dbcon=mysql.connector.connect(
    host="192.168.29.244",
    user="test01",
    password="test@123",
    database="a"
    )

    return dbcon
    # print("connected to database at ",dbcon)        

dbcon1=MyDBConnection()
print("connected to database throug outside of def at  ",dbcon1) 

def insertvalues():
    value1=tbInputValue1.get()
    value2=tbInputValue2.get()

    e_con=MyDBConnection()
    result=e_con.cursor()

    statement="insert into stdname(value1,value2)  values(%s,%s);"
    valuepass=(value1,value2)
    result.execute(statement,valuepass)
    e_con.commit()

    print(result.rowcount, " row inserted")
 


def updatevalues():
    value1=tbInputValue1.get()
    value2=tbInputValue2.get()
    

    e_con=MyDBConnection()
    result=e_con.cursor()

    statement="update stdname set value1 = (%s) where sno = (%s);"
    valuepass=(value1,value2)
    result.execute(statement,valuepass)
    e_con.commit()

    print(result.rowcount, " row updated")
 


def deletevalues():
    value1=tbInputValue1.get()

    e_con=MyDBConnection()
    result=e_con.cursor()

    statement="delete from stdname where sno = (%s);"
    valuepass=(value1,)
    result.execute(statement,valuepass)
    e_con.commit()

    print(result.rowcount, " row deleted")  
 



    # print(value1,value2)


lblTitle=Label(app,text="Student Mark Entry", bg="red", fg="white")
lblTitle.grid(row=0, padx=50, pady=30)


lblvalue1msg=Label(app,text="Enter Value A :", bg="black", fg="white")
lblvalue1msg.grid(row=1, column=1, padx=10, pady=30)

lblvalue2msg=Label(app,text="Enter Value B :", bg="black", fg="white")
lblvalue2msg.grid(row=2, column=1, padx=10, pady=30)

tbInputValue1=Entry(app)
tbInputValue1.grid(row=1, column=2, padx=10, pady=30)

tbInputValue2=Entry(app)
tbInputValue2.grid(row=2, column=2, padx=10, pady=30)

btninsert=Button(app,text="Insert", command=insertvalues)
btninsert.grid(row=3, column=1, padx=10, pady=30)

btnupdate=Button(app,text="Update", command=updatevalues)
btnupdate.grid(row=3, column=2, padx=10, pady=30)

btndelete=Button(app,text="Delete", command=deletevalues)
btndelete.grid(row=3, column=3, padx=10, pady=30)

btnreset=Button(app,text="Reset")
btnreset.grid(row=3, column=4, padx=10, pady=30)


app.mainloop()