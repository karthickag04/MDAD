from tkinter import *

def editmenulist(pass_menulist):
    editmenu=Menu(pass_menulist)
    pass_menulist.add_cascade(label="Edit",menu=editmenu)
    editmenu.add_command(label="Select All")
    