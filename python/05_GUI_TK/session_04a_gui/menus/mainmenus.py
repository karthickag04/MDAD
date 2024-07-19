from tkinter import *
from menus.filemenu import *
from menus.editmenu import *

def menulistmethod(pass_win):
    menulist=Menu(pass_win)
    pass_win.config(menu=menulist)

    filemenulist(menulist)
    editmenulist(menulist)


