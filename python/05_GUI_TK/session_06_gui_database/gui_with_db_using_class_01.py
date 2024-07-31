from tkinter import *
import mysql.connector
from dbfile.db import mydbclass

app = Tk()

app.title("Database Demo")
app.geometry("800x600+300+60")

db = mydbclass()

def displayrecords():
    """Display all records from the database."""
    records = db.selectrecords()
    txt = "\n".join([f"value1 : {row[0]}, value2 : {row[1]}" for row in records])
    lblresultmsg.config(text=txt)

def passvalue():
    """Insert new record using the input values."""
    value1 = tbInputValue1.get()
    value2 = tbInputValue2.get()
    txt = f"v1: {value1}, v2: {value2}"
    lblresultmsg.config(text=txt)

    db.insertrecord1(value1, value2)
    displayrecords()

def passupdatevalue():
    """Update existing record based on the input values."""
    value1 = tbInputValue1.get()
    value2 = tbInputValue2.get()
    txt = f"v1: {value1}, v2: {value2}"
    lblresultmsg.config(text=txt)

    db.updaterecord1(value1, value2)
    displayrecords()

def passdeleterecord():
    """Delete record based on the input value1."""
    value1 = tbInputValue1.get()
    db.deleterecord(value1)
    lblresultmsg.config(text=f"Record with value1 = {value1} deleted")
    displayrecords()



def resetfields():
    """Clear all input fields and result labels."""
    tbInputValue1.delete(0, END)
    tbInputValue2.delete(0, END)
    lblresultmsg.config(text="Fields cleared")

lblTitle = Label(app, text="Record Entry", bg="red", fg="white")
lblTitle.grid(row=0, padx=50, pady=30)

lblvalue1msg = Label(app, text="Enter Value A:", bg="black", fg="white")
lblvalue1msg.grid(row=1, column=1, padx=10, pady=30)

lblvalue2msg = Label(app, text="Enter Value B:", bg="black", fg="white")
lblvalue2msg.grid(row=2, column=1, padx=10, pady=30)

tbInputValue1 = Entry(app)
tbInputValue1.grid(row=1, column=2, padx=10, pady=30)

tbInputValue2 = Entry(app)
tbInputValue2.grid(row=2, column=2, padx=10, pady=30)

btninsert = Button(app, text="Insert", command=passvalue)
btninsert.grid(row=3, column=1, padx=10, pady=30)

btnupdate = Button(app, text="Update", command=passupdatevalue)
btnupdate.grid(row=3, column=2, padx=10, pady=30)

btndelete = Button(app, text="Delete", command=passdeleterecord)
btndelete.grid(row=3, column=3, padx=10, pady=30)

btnreset = Button(app, text="Reset", command=resetfields)
btnreset.grid(row=3, column=4, padx=10, pady=30)

btnshow = Button(app, text="Show Records", command=displayrecords)
btnshow.grid(row=3, column=5, padx=10, pady=30)

lblresultmsg = Label(app, text="not yet connected", bg="black", fg="white", wraplength=500)
lblresultmsg.grid(row=4, column=2, padx=10, pady=30)

displayrecords()
app.mainloop()
