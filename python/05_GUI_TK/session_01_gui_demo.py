import tkinter as tk

# Initialize the main application window
root = tk.Tk()
root.title("Demo Tk APP")  # Set the title of the window
root.geometry("800x400+200+10")  # Set the size and position of the window
root.config(bg="gray")  # Set the background color of the window

# Function to perform addition
def addition():
    a = int(lblvalue1_entry.get())  # Get the first value from the entry widget and convert it to an integer
    b = int(lblvalue2_entry.get())  # Get the second value from the entry widget and convert it to an integer
    c = a + b  # Perform addition
    print(c)  # Print the result to the console
    lblresult_show.config(text=c)  # Update the result label with the result of the addition

# Create and place a label for the title
lbltitle = tk.Label(root, text="Addition Program", bg="red", fg="white")
lbltitle.grid(row=0, column=0, padx=30, pady=30)

# Create and place a label for the first value input
lblvalue1 = tk.Label(root, text="Enter value 01")
lblvalue1.grid(row=1, column=0, padx=30, pady=10)

# Create and place a label for the second value input
lblvalue2 = tk.Label(root, text="Enter value 01")
lblvalue2.grid(row=2, column=0, padx=30, pady=10)

# Create and place an entry widget for the first value input
lblvalue1_entry = tk.Entry(root, width=30)
lblvalue1_entry.grid(row=1, column=1, padx=30, pady=10)

# Create and place an entry widget for the second value input
lblvalue2_entry = tk.Entry(root, width=30)
lblvalue2_entry.grid(row=2, column=1, padx=30, pady=10)

# Create and place a button that calls the addition function when clicked
btnAdd = tk.Button(root, text="Add", command=addition)
btnAdd.grid(row=3, column=1, padx=30, pady=10)

# Create and place a label to display the result
lblresult_show = tk.Label(root, text="")
lblresult_show.grid(row=4, column=0, padx=30, pady=10)

# Run the Tkinter event loop
root.mainloop()
