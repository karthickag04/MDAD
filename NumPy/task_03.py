import numpy as np

# Dataset: Employee ID, Name, Department, Salary, Years of Experience, Performance Rating
employees = np.array([
    ['E001', 'Alice', 'HR', '50000', '5', '4.2'],
    ['E002', 'Bob', 'Finance', '60000', '6', '4.0'],
    ['E003', 'Charlie', 'IT', '70000', '8', '4.5'],
    ['E004', 'David', 'Marketing', '55000', '4', '3.9'],
    ['E005', 'Eve', 'Finance', '65000', '7', '4.3'],
    ['E006', 'Frank', 'IT', '75000', '9', '4.6'],
    ['E007', 'Grace', 'HR', '48000', '3', '3.8'],
    ['E008', 'Hank', 'Marketing', '52000', '5', '4.1'],
    ['E009', 'Ivy', 'IT', '72000', '6', '4.4'],
    ['E010', 'Jack', 'Finance', '67000', '7', '4.2']
])

# Tasks:
# 1. Extract the salaries of all employees and convert them to float.
# 2. Calculate the average salary of the employees.
# 3. Find the employee with the highest salary.
# 4. Calculate the total years of experience across all employees.
# 5. Find the name of the employee with the lowest performance rating.
# 6. Calculate the average performance rating of the employees.
# 7. Count the number of employees with a salary above $60,000.
# 8. Extract the names of employees in the 'IT' department.
# 9. Find the median years of experience among the employees.
# 10. Sort the employees by their years of experience in descending order.
# 11. Determine if there are any employees with the same salary.
# 12. Extract the names and departments of employees with salaries above $65,000.
# 13. Find the total number of employees in the 'Finance' department.
# 14. Calculate the variance in the performance ratings of the employees.
# 15. Extract the names of employees with ratings higher than 4.5.
# 16. Determine the range (max - min) of the salaries.
# 17. Find the employees with years of experience less than 5.
# 18. Calculate the total payroll cost for the company (sum of salaries).
# 19. Find the employee with the highest years of experience.
# 20. Extract the names and performance ratings of 'HR' employees.
# 21. Calculate the standard deviation of the employees' years of experience.
# 22. Identify employees with a performance rating below the average rating.
# 23. Find the number of unique departments in the company.
# 24. Extract the employee IDs and names for those in the 'Marketing' department.
# 25. Determine if all employees in the 'IT' department have a rating of 4.0 or higher.
# 26. Create a mask for employees with salaries between $50,000 and $70,000.
# 27. Extract the names of employees that have less than 4 years of experience.
# 28. Calculate the correlation between salaries and performance ratings.
# 29. Find the department with the highest average salary.
# 30. Extract the names of employees and increase their salaries by 10%.
