import tkinter as tk

root=tk.Tk()
root.title("Menu Examples")
root.geometry("400x400")

def closeApp():
    root.destroy()

menulist=tk.Menu(root)
root.config(menu=menulist)


filemenu=tk.Menu(menulist,tearoff=0)
menulist.add_cascade(label="File",underline=0, menu=filemenu)
menulist.add_command(label="Edit")
menulist.add_command(label="View")

newsubmenulist=tk.Menu(filemenu,tearoff=0)
filemenu.add_cascade(label="New", menu=newsubmenulist)
filemenu.add_command(label="Close", underline=4, command=closeApp, accelerator='Ctrl + E')

newsubmenulist.add_command(label="new text file")
newsubmenulist.add_separator()
newsubmenulist.add_command(label="new file")
newsubmenulist.add_separator()
newsubmenulist.add_command(label="new window")


root.bind("<Control-e>", lambda event: closeApp())

entryboxedit=tk.Entry(root)
entryboxedit.pack(fill=tk.BOTH, expand=True)

root.mainloop()