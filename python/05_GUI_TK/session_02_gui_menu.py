import tkinter as tk

# Initialize the main application window
root = tk.Tk()
root.title("App with Menu")  # Set the title of the window
root.geometry("800x400+200+10")  # Set the size and position of the window

# Function to close the application
def closeapp():
    root.destroy()  # Close the application window

# Create a menubar
menubarlist = tk.Menu(root)

# Create a 'File' menu and add it to the menubar
filemenu = tk.Menu(menubarlist, tearoff=0)
menubarlist.add_cascade(label="File", menu=filemenu, underline=0)  # Add 'File' menu to the menubar

# Add 'New' command to the 'File' menu
filemenu.add_command(label="New", underline=1, accelerator="Ctrl+N")

# Add a separator line to the 'File' menu
filemenu.add_separator()

# Add 'Close' command to the 'File' menu, which calls closeapp function when clicked
filemenu.add_command(label="Close", underline=1, accelerator="Ctrl+E", command=closeapp)

# Create an 'Edit' menu and add it to the menubar
editmenu = tk.Menu(menubarlist)
menubarlist.add_cascade(label="Edit", menu=editmenu, underline=0)  # Add 'Edit' menu to the menubar

# Add 'Cut' command to the 'Edit' menu
editmenu.add_command(label="Cut", underline=1, accelerator="Ctrl+X")

# Set the background color of the window and add the menubar
root.config(bg="gray", menu=menubarlist)

# Run the Tkinter event loop
root.mainloop()
