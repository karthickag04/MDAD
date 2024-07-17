from tkinter import *
from menus.mainmenu import *


def filemenulist(passing_menulist):
    filemenu=Menu(passing_menulist)
    passing_menulist.add_cascade(label="File",menu=filemenu)

    filemenu.add_command(label="New")
    filemenu.add_separator()
    
    filesubmenuExtra(filemenu)



def filesubmenuExtra(Passing_filemenu):
    Passing_filemenu.add_command(label="New Window")
    # Passing_filemenu.add_command(label="New Window", command=newwindowfunction)
    Passing_filemenu.add_command(label="New File")
    Passing_filemenu.add_separator()

# def newwindowfunction():
#     window=Tk()
#     window.title("New Window")
#     window.geometry("300x300")
#     window.mainloop()