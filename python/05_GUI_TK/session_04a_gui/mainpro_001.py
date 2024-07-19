# this will use functions/methods declared inside to create menus

from tkinter import *

win=Tk()
win.title("Menu Demo")
win.geometry("400x400+100+100")



def menulistmethod(pass_win):
    menulist=Menu(pass_win)
    pass_win.config(menu=menulist)

    filemenulist(menulist)
    editmenulist(menulist)


def filemenulist(pass_menulist):
    filemenu=Menu(pass_menulist)
    pass_menulist.add_cascade(label="File", menu=filemenu)
    filemenuitems(filemenu)



def filemenuitems(filemenu):
    filemenu.add_command(label="new")
    filemenu.add_command(label="open")



def editmenulist(pass_menulist):
    editmenu=Menu(pass_menulist)
    pass_menulist.add_cascade(label="Edit",menu=editmenu)
    editmenu.add_command(label="Select All")
    

menulistmethod(win)


win.mainloop()
