# this method will use menucreation using class with constructor

from tkinter import *

win=Tk()
win.title("Menu Demo")
win.geometry("400x400+100+100")


class MenuCreation():
    def __init__(self,win):
        
        self.menulistmethod(win)


    def menulistmethod(self,pass_win):
        menulist=Menu(pass_win)
        pass_win.config(menu=menulist)

        self.filemenulist(menulist)
        self.editmenulist(menulist)


    def filemenulist(self,pass_menulist):
        filemenu=Menu(pass_menulist)
        pass_menulist.add_cascade(label="File", menu=filemenu)
        self.filemenuitems(filemenu)



    def filemenuitems(self,filemenu):
        filemenu.add_command(label="new")
        filemenu.add_command(label="open")



    def editmenulist(self,pass_menulist):
        editmenu=Menu(pass_menulist)
        pass_menulist.add_cascade(label="Edit",menu=editmenu)
        editmenu.add_command(label="Select All")
        

# menulistmethod(win)


menuinitiate=MenuCreation(win)


win.mainloop()
