import numpy as np

# Dataset: Names, Ages, Grades, Attendance
students = np.array([
    ['Alice', '21', '85', '90'],
    ['Bob', '22', '78', '85'],
    ['Charlie', '23', '92', '95'],
    ['David', '21', '72', '80'],
    ['Eve', '22', '89', '95']
])

# Task 1: Extract the ages of all students and convert them to integers
ages = students[:, 1].astype(int)

# Task 2: Calculate the average age of the students
average_age = np.mean(ages)

# Task 3: Find the student with the highest grade
grades = students[:, 2].astype(int)
highest_grade_student = students[np.argmax(grades)]

# Task 4: Calculate the total attendance for all students
attendance = students[:, 3].astype(int)
total_attendance = np.sum(attendance)

# Task 5: Find the name of the youngest student
youngest_student = students[np.argmin(ages)]

# Task 6: Calculate the average grade of the students
average_grade = np.mean(grades)

# Task 7: Count the number of students who have grades above 80
students_above_80 = np.sum(grades > 80)

# Task 8: Extract the names of students with attendance below 85
low_attendance_students = students[attendance < 85, 0]

# Task 9: Find the median age of the students
median_age = np.median(ages)

# Task 10: Sort the students by their grades in ascending order
sorted_by_grades = students[np.argsort(grades)]

# Task 11: Determine if there are any students with the same age
unique_ages = np.unique(ages)
has_duplicates = len(unique_ages) != len(ages)

# Task 12: Extract the names and grades of students older than 21
older_students = students[ages > 21, [0, 2]]

# Task 13: Find the range of attendance (max - min)
attendance_range = np.ptp(attendance)

# Task 14: Standardize the grades (mean = 0, std = 1)
standardized_grades = (grades - np.mean(grades)) / np.std(grades)

# Task 15: Normalize the attendance (scale between 0 and 1)
normalized_attendance = (attendance - np.min(attendance)) / (np.max(attendance) - np.min(attendance))

# Task 16: Calculate the variance in students' ages
age_variance = np.var(ages)

# Task 17: Find the students whose grades are below the average grade
below_average_students = students[grades < average_grade]

# Task 18: Create a boolean array indicating which students have grades >= 85
high_grade_mask = grades >= 85

# Task 19: Use the mask from Task 18 to extract the names of high-grade students
high_grade_students = students[high_grade_mask, 0]

# Task 20: Add a new student to the dataset
new_student = np.array(['Frank', '24', '88', '92'])
students = np.vstack([students, new_student])

print("Dataset-based tasks generated successfully!")
