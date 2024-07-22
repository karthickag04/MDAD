# Import necessary modules from tkinter
import tkinter as tk
from tkinter import filedialog, messagebox

# Create the main window
root = tk.Tk()
root.geometry("500x500")  # Set the initial size of the window
root.title("Text Editor")  # Set the title of the window

# Function to copy selected text to clipboard
def copy_selected_text():
    try:
        selected_text = text_area.get(tk.SEL_FIRST, tk.SEL_LAST)
        root.clipboard_clear()
        root.clipboard_append(selected_text)
    except tk.TclError:
        pass

# Function to close the application
def close_app():
    if messagebox.askokcancel("Quit", "Do you really want to quit?"):
        root.destroy()

# Function to create a new file (clear the text area)
def createnewfile():
    text_area.delete("1.0", tk.END)

# Function to save the content of the text area to a file
def save_file():
    file = filedialog.asksaveasfile(mode="w", defaultextension="txt", filetypes=[("Text files", ".txt"), ("All files", "*.*")])
    if file is not None:  # Check if file selection was made
        file.write(text_area.get("1.0", tk.END))  # Write the content of the text area to the file
        file.close()

# Function to open a file and display its content in the text area
def open_file():
    file = filedialog.askopenfile(mode="r", defaultextension="txt", filetypes=[("Text files", ".txt"), ("All files", "*.*")])
    if file is not None:  # Check if file selection was made
        text_area.delete("1.0", tk.END)  # Clear existing content in the text area
        text_area.insert("1.0", file.read())  # Insert the content of the file into the text area
        file.close()

# Create the main menu bar
menulist = tk.Menu(root)

# Create the file menu under the main menu bar
filemenu = tk.Menu(menulist)
menulist.add_cascade(label="File", menu=filemenu)

# Add commands (menu items) to the file menu
filemenu.add_command(label="New", command=createnewfile)
filemenu.add_separator()
filemenu.add_command(label="Open", command=open_file)
filemenu.add_separator()
filemenu.add_command(label="Save", command=save_file)
filemenu.add_separator()
filemenu.add_command(label="Quit", command=close_app)
filemenu.add_separator()
filemenu.add_command(label="Copy", command=copy_selected_text)

# Add other cascades (sub-menus) to the main menu bar (currently empty in your code)
menulist.add_cascade(label="Edit")
menulist.add_cascade(label="View")

# Configure the main window to use the main menu bar
root.config(menu=menulist)

# Create a text area widget for editing text
text_area = tk.Text(root)
text_area.pack(expand=True, fill="both")  # Expand the text area to fill the window

# Start the main event loop of the tkinter application
root.mainloop()
