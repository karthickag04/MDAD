from tkinter import *

def filemenulist(pass_menulist):
    filemenu=Menu(pass_menulist)
    pass_menulist.add_cascade(label="File", menu=filemenu)
    filemenuitems(filemenu)



def filemenuitems(filemenu):
    filemenu.add_command(label="new")
    filemenu.add_command(label="open")