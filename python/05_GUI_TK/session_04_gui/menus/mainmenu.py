from tkinter import *
from menus.filemenu import *

# from menus.editmenu import * 
# from menus.viewmenu import *


def menulistcreate(passing_root):
    menulist=Menu(passing_root)
    # menulist.add_cascade(label="File")
    filemenulist(menulist)

    menulist.add_cascade(label="Edit") # editmenulist(menulist)
    menulist.add_cascade(label="View") # viewmenulist(menulist)
    passing_root.config(menu=menulist)


