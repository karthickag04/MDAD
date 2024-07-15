import tkinter as tk
from tkinter import Menu

def close_application():
    root.destroy()

root = tk.Tk()
root.title("Simple Application")
root.geometry("400x400")

# Create a menu bar
menubar = Menu(root)
root.config(menu=menubar)

# Create a File menu
file_menu = Menu(menubar, tearoff=0)
menubar.add_cascade(label="File", menu=file_menu)

# Add Close option to the File menu
file_menu.add_command(label="Close", underline=0, accelerator="Ctrl+E", command=close_application)

# Define key binding for Ctrl+E to close the application
root.bind("<Control-e>", lambda event: close_application())

root.mainloop()
