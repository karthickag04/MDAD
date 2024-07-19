# it will use function/methods from menus folder namely mainmenu,filemenu,editmenu to create menus

from tkinter import *
from menus.mainmenus import *

win=Tk()
win.title("Menu Demo")
win.geometry("400x400+100+100")

menulistmethod(win)

win.mainloop()
